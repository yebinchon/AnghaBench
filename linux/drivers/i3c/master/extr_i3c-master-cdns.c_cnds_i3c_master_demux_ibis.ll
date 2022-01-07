; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cnds_i3c_master_demux_ibis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cnds_i3c_master_demux_ibis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_i3c_master = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@MST_INT_IBIR_THR = common dso_local global i32 0, align 4
@MST_ICR = common dso_local global i64 0, align 8
@MST_STATUS0 = common dso_local global i64 0, align 8
@MST_STATUS0_IBIR_EMP = common dso_local global i32 0, align 4
@IBIR = common dso_local global i64 0, align 8
@IBIR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_i3c_master*)* @cnds_i3c_master_demux_ibis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnds_i3c_master_demux_ibis(%struct.cdns_i3c_master* %0) #0 {
  %2 = alloca %struct.cdns_i3c_master*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cdns_i3c_master* %0, %struct.cdns_i3c_master** %2, align 8
  %5 = load i32, i32* @MST_INT_IBIR_THR, align 4
  %6 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %7 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MST_ICR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  %12 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %13 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MST_STATUS0, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %72, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MST_STATUS0_IBIR_EMP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %79

24:                                               ; preds = %18
  %25 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %26 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IBIR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @IBIR_TYPE(i32 %31)
  switch i32 %32, label %70 [
    i32 129, label %33
    i32 130, label %37
    i32 128, label %57
  ]

33:                                               ; preds = %24
  %34 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @cdns_i3c_master_handle_ibi(%struct.cdns_i3c_master* %34, i32 %35)
  br label %71

37:                                               ; preds = %24
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @IBIR_XFER_BYTES(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @IBIR_ERROR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i1 [ true, %37 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %51 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %55 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %54, i32 0, i32 0
  %56 = call i32 @queue_work(i32 %53, i32* %55)
  br label %71

57:                                               ; preds = %24
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @IBIR_XFER_BYTES(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @IBIR_ERROR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i1 [ true, %57 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON(i32 %68)
  br label %70

70:                                               ; preds = %24, %66
  br label %71

71:                                               ; preds = %70, %46, %33
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %74 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MST_STATUS0, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readl(i64 %77)
  store i32 %78, i32* %3, align 4
  br label %18

79:                                               ; preds = %18
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @IBIR_TYPE(i32) #1

declare dso_local i32 @cdns_i3c_master_handle_ibi(%struct.cdns_i3c_master*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IBIR_XFER_BYTES(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
