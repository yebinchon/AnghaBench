; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_bl_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_bl_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, i64, i32 }

@__const.cyapa_pip_bl_enter.cmd = private unnamed_addr constant [7 x i32] [i32 4, i32 0, i32 5, i32 0, i32 47, i32 0, i32 1], align 16
@EINVAL = common dso_local global i32 0, align 4
@cyapa_sort_pip_application_launch_data = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CYAPA_GEN5 = common dso_local global i64 0, align 8
@CYAPA_STATE_GEN5_BL = common dso_local global i32 0, align 4
@CYAPA_GEN6 = common dso_local global i64 0, align 8
@CYAPA_STATE_GEN6_BL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyapa_pip_bl_enter(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca [7 x i32], align 16
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %8 = bitcast [7 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([7 x i32]* @__const.cyapa_pip_bl_enter.cmd to i8*), i64 28, i1 false)
  %9 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %10 = call i32 @cyapa_poll_state(%struct.cyapa* %9, i32 500)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %2, align 4
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %17 = call i64 @cyapa_is_pip_bl_mode(%struct.cyapa* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %83

20:                                               ; preds = %15
  %21 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %22 = call i32 @cyapa_is_pip_app_mode(%struct.cyapa* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %83

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %30 = call i32 @cyapa_empty_pip_output_data(%struct.cyapa* %29, i32* null, i32* null, i32* null)
  store i32 8, i32* %6, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @memset(i32* %31, i32 0, i32 %32)
  %34 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %35 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %37 = load i32, i32* @cyapa_sort_pip_application_launch_data, align 4
  %38 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %34, i32* %35, i32 28, i32* %36, i32* %6, i32 5000, i32 %37, i32 1)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %28
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45, %41, %28
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  br label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i32 [ %53, %52 ], [ %56, %54 ]
  store i32 %58, i32* %2, align 4
  br label %83

59:                                               ; preds = %45
  %60 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %61 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %63 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CYAPA_GEN5, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @CYAPA_STATE_GEN5_BL, align 4
  %69 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %70 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %82

71:                                               ; preds = %59
  %72 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %73 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CYAPA_GEN6, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @CYAPA_STATE_GEN6_BL, align 4
  %79 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %80 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %71
  br label %82

82:                                               ; preds = %81, %67
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %57, %24, %19, %13
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cyapa_poll_state(%struct.cyapa*, i32) #2

declare dso_local i64 @cyapa_is_pip_bl_mode(%struct.cyapa*) #2

declare dso_local i32 @cyapa_is_pip_app_mode(%struct.cyapa*) #2

declare dso_local i32 @cyapa_empty_pip_output_data(%struct.cyapa*, i32*, i32*, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i32*, i32, i32*, i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
