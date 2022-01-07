; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_kms.c_rcar_du_encoders_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_kms.c_rcar_du_encoders_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_device = type { i32 }
%struct.of_endpoint = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"unconnected endpoint %pOF, skipping\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"connected entity %pOF is disabled, skipping\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"failed to initialize encoder %pOF on output %u (%d), skipping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_du_device*, i32, %struct.of_endpoint*)* @rcar_du_encoders_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_du_encoders_init_one(%struct.rcar_du_device* %0, i32 %1, %struct.of_endpoint* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcar_du_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_endpoint*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.rcar_du_device* %0, %struct.rcar_du_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.of_endpoint* %2, %struct.of_endpoint** %7, align 8
  %10 = load %struct.of_endpoint*, %struct.of_endpoint** %7, align 8
  %11 = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  %13 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %12)
  store %struct.device_node* %13, %struct.device_node** %8, align 8
  %14 = load %struct.device_node*, %struct.device_node** %8, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %18 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.of_endpoint*, %struct.of_endpoint** %7, align 8
  %21 = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  %23 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.device_node* %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %69

26:                                               ; preds = %3
  %27 = load %struct.device_node*, %struct.device_node** %8, align 8
  %28 = call i32 @of_device_is_available(%struct.device_node* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %32 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.device_node*, %struct.device_node** %8, align 8
  %35 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %34)
  %36 = load %struct.device_node*, %struct.device_node** %8, align 8
  %37 = call i32 @of_node_put(%struct.device_node* %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %69

40:                                               ; preds = %26
  %41 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.device_node*, %struct.device_node** %8, align 8
  %44 = call i32 @rcar_du_encoder_init(%struct.rcar_du_device* %41, i32 %42, %struct.device_node* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @EPROBE_DEFER, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @ENOLINK, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %59 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.device_node*, %struct.device_node** %8, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dev_warn(i32 %60, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %52, %47, %40
  %66 = load %struct.device_node*, %struct.device_node** %8, align 8
  %67 = call i32 @of_node_put(%struct.device_node* %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %30, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.device_node*) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @rcar_du_encoder_init(%struct.rcar_du_device*, i32, %struct.device_node*) #1

declare dso_local i32 @dev_warn(i32, i8*, %struct.device_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
