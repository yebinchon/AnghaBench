; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_mpu.h_wf_get_mpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_mpu.h_wf_get_mpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu_data = type opaque
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"/u3@0,f8000000/i2c@f8001000/cpuid@a%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cpuid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mpu_data* (i32)* @wf_get_mpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mpu_data* @wf_get_mpu(i32 %0) #0 {
  %2 = alloca %struct.mpu_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 2, i32 0
  %13 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %15 = call %struct.device_node* @of_find_node_by_path(i8* %14)
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.mpu_data* null, %struct.mpu_data** %2, align 8
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call i8* @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  store i8* %21, i8** %6, align 8
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i32 @of_node_put(%struct.device_node* %22)
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store %struct.mpu_data* null, %struct.mpu_data** %2, align 8
  br label %30

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to %struct.mpu_data*
  store %struct.mpu_data* %29, %struct.mpu_data** %2, align 8
  br label %30

30:                                               ; preds = %27, %26, %18
  %31 = load %struct.mpu_data*, %struct.mpu_data** %2, align 8
  ret %struct.mpu_data* %31
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
