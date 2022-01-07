; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-drm-core.c_compare_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-drm-core.c_compare_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node*, %struct.ipu_client_platformdata*, %struct.TYPE_2__* }
%struct.device_node = type { i32 }
%struct.ipu_client_platformdata = type { %struct.device_node* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"imx-ipuv3-crtc\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"lvds-channel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @compare_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_of(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.ipu_client_platformdata*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.device_node*
  store %struct.device_node* %9, %struct.device_node** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strcmp(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 1
  %20 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %19, align 8
  store %struct.ipu_client_platformdata* %20, %struct.ipu_client_platformdata** %7, align 8
  %21 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %7, align 8
  %22 = getelementptr inbounds %struct.ipu_client_platformdata, %struct.ipu_client_platformdata* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = icmp eq %struct.device_node* %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %2
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = call i64 @of_node_name_eq(%struct.device_node* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.device_node*, %struct.device_node** %6, align 8
  %33 = call %struct.device_node* @of_get_parent(%struct.device_node* %32)
  store %struct.device_node* %33, %struct.device_node** %6, align 8
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load %struct.device_node*, %struct.device_node** %38, align 8
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = icmp eq %struct.device_node* %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
