; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_manage_matype_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_manage_matype_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i64, i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RCVMODE_DVBS2 = common dso_local global i64 0, align 8
@RSTV0910_P2_MATSTR1 = common dso_local global i64 0, align 8
@RCVMODE_DVBS = common dso_local global i64 0, align 8
@FE_SAT_35 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*)* @manage_matype_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manage_matype_info(%struct.stv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv*, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.stv* %0, %struct.stv** %3, align 8
  %5 = load %struct.stv*, %struct.stv** %3, align 8
  %6 = getelementptr inbounds %struct.stv, %struct.stv* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.stv*, %struct.stv** %3, align 8
  %14 = getelementptr inbounds %struct.stv, %struct.stv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RCVMODE_DVBS2, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = load %struct.stv*, %struct.stv** %3, align 8
  %20 = load i64, i64* @RSTV0910_P2_MATSTR1, align 8
  %21 = load %struct.stv*, %struct.stv** %3, align 8
  %22 = getelementptr inbounds %struct.stv, %struct.stv* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %26 = call i32 @read_regs(%struct.stv* %19, i64 %24, i32* %25, i32 2)
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 3
  %30 = load %struct.stv*, %struct.stv** %3, align 8
  %31 = getelementptr inbounds %struct.stv, %struct.stv* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 16
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load %struct.stv*, %struct.stv** %3, align 8
  %38 = getelementptr inbounds %struct.stv, %struct.stv* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 252
  %42 = icmp eq i32 %41, 240
  %43 = zext i1 %42 to i32
  %44 = load %struct.stv*, %struct.stv** %3, align 8
  %45 = getelementptr inbounds %struct.stv, %struct.stv* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  br label %61

46:                                               ; preds = %12
  %47 = load %struct.stv*, %struct.stv** %3, align 8
  %48 = getelementptr inbounds %struct.stv, %struct.stv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RCVMODE_DVBS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.stv*, %struct.stv** %3, align 8
  %54 = getelementptr inbounds %struct.stv, %struct.stv* %53, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load %struct.stv*, %struct.stv** %3, align 8
  %56 = getelementptr inbounds %struct.stv, %struct.stv* %55, i32 0, i32 3
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* @FE_SAT_35, align 4
  %58 = load %struct.stv*, %struct.stv** %3, align 8
  %59 = getelementptr inbounds %struct.stv, %struct.stv* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %52, %46
  br label %61

61:                                               ; preds = %60, %18
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %9
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @read_regs(%struct.stv*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
