; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_palmas-pwrbutton.c_palmas_pwron_params_ofinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_palmas-pwrbutton.c_palmas_pwron_params_ofinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.palmas_pwron_config = type { i32, i32 }

@__const.palmas_pwron_params_ofinit.lpk_times = private unnamed_addr constant [4 x i32] [i32 6, i32 8, i32 10, i32 12], align 16
@__const.palmas_pwron_params_ofinit.pwr_on_deb_ms = private unnamed_addr constant [4 x i32] [i32 15, i32 100, i32 500, i32 1000], align 16
@.str = private unnamed_addr constant [29 x i8] c"ti,palmas-long-press-seconds\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"ti,palmas-pwron-debounce-milli-seconds\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"h/w controlled shutdown duration=%d seconds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.palmas_pwron_config*)* @palmas_pwron_params_ofinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @palmas_pwron_params_ofinit(%struct.device* %0, %struct.palmas_pwron_config* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.palmas_pwron_config*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.palmas_pwron_config* %1, %struct.palmas_pwron_config** %4, align 8
  %11 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([4 x i32]* @__const.palmas_pwron_params_ofinit.lpk_times to i8*), i64 16, i1 false)
  %12 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([4 x i32]* @__const.palmas_pwron_params_ofinit.pwr_on_deb_ms to i8*), i64 16, i1 false)
  %13 = load %struct.palmas_pwron_config*, %struct.palmas_pwron_config** %4, align 8
  %14 = call i32 @memset(%struct.palmas_pwron_config* %13, i32 0, i32 8)
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = sub nsw i32 %16, 1
  %18 = load %struct.palmas_pwron_config*, %struct.palmas_pwron_config** %4, align 8
  %19 = getelementptr inbounds %struct.palmas_pwron_config, %struct.palmas_pwron_config* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %5, align 8
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %89

26:                                               ; preds = %2
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = call i32 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %38, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.palmas_pwron_config*, %struct.palmas_pwron_config** %4, align 8
  %47 = getelementptr inbounds %struct.palmas_pwron_config, %struct.palmas_pwron_config* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %32

52:                                               ; preds = %44, %32
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = call i32 @of_property_read_u32(%struct.device_node* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %80, label %58

58:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i32, i32* %7, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %62 = call i32 @ARRAY_SIZE(i32* %61)
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %65, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.palmas_pwron_config*, %struct.palmas_pwron_config** %4, align 8
  %74 = getelementptr inbounds %struct.palmas_pwron_config, %struct.palmas_pwron_config* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %79

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %59

79:                                               ; preds = %71, %59
  br label %80

80:                                               ; preds = %79, %53
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = load %struct.palmas_pwron_config*, %struct.palmas_pwron_config** %4, align 8
  %83 = getelementptr inbounds %struct.palmas_pwron_config, %struct.palmas_pwron_config* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_info(%struct.device* %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %80, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.palmas_pwron_config*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
