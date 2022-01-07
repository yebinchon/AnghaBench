; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ux500/cryp/extr_cryp.c_cryp_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ux500/cryp/extr_cryp.c_cryp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryp_device_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYP_PERIPHERAL_ID2_DB8500 = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CRYP_PERIPHERAL_ID0 = common dso_local global i32 0, align 4
@CRYP_PERIPHERAL_ID1 = common dso_local global i32 0, align 4
@CRYP_PERIPHERAL_ID3 = common dso_local global i32 0, align 4
@CRYP_PCELL_ID0 = common dso_local global i32 0, align 4
@CRYP_PCELL_ID1 = common dso_local global i32 0, align 4
@CRYP_PCELL_ID2 = common dso_local global i32 0, align 4
@CRYP_PCELL_ID3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cryp_check(%struct.cryp_device_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cryp_device_data*, align 8
  %4 = alloca i32, align 4
  store %struct.cryp_device_data* %0, %struct.cryp_device_data** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %6 = icmp eq %struct.cryp_device_data* null, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %82

10:                                               ; preds = %1
  %11 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %12 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 7
  %15 = call i32 @readl_relaxed(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @CRYP_PERIPHERAL_ID2_DB8500, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %82

22:                                               ; preds = %10
  %23 = load i32, i32* @CRYP_PERIPHERAL_ID0, align 4
  %24 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %25 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 6
  %28 = call i32 @readl_relaxed(i32* %27)
  %29 = icmp eq i32 %23, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %22
  %31 = load i32, i32* @CRYP_PERIPHERAL_ID1, align 4
  %32 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %33 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  %36 = call i32 @readl_relaxed(i32* %35)
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %30
  %39 = load i32, i32* @CRYP_PERIPHERAL_ID3, align 4
  %40 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %41 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = call i32 @readl_relaxed(i32* %43)
  %45 = icmp eq i32 %39, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %38
  %47 = load i32, i32* @CRYP_PCELL_ID0, align 4
  %48 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %49 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = call i32 @readl_relaxed(i32* %51)
  %53 = icmp eq i32 %47, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %46
  %55 = load i32, i32* @CRYP_PCELL_ID1, align 4
  %56 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %57 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = call i32 @readl_relaxed(i32* %59)
  %61 = icmp eq i32 %55, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %54
  %63 = load i32, i32* @CRYP_PCELL_ID2, align 4
  %64 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %65 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = call i32 @readl_relaxed(i32* %67)
  %69 = icmp eq i32 %63, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load i32, i32* @CRYP_PCELL_ID3, align 4
  %72 = load %struct.cryp_device_data*, %struct.cryp_device_data** %3, align 8
  %73 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @readl_relaxed(i32* %75)
  %77 = icmp eq i32 %71, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %82

79:                                               ; preds = %70, %62, %54, %46, %38, %30, %22
  %80 = load i32, i32* @EPERM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %79, %78, %19, %7
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @readl_relaxed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
