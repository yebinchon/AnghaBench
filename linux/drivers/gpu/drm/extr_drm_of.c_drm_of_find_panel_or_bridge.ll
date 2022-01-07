; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_of.c_drm_of_find_panel_or_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_of.c_drm_of_find_panel_or_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.drm_panel = type { i32 }
%struct.drm_bridge = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_of_find_panel_or_bridge(%struct.device_node* %0, i32 %1, i32 %2, %struct.drm_panel** %3, %struct.drm_bridge** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_panel**, align 8
  %11 = alloca %struct.drm_bridge**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.drm_panel** %3, %struct.drm_panel*** %10, align 8
  store %struct.drm_bridge** %4, %struct.drm_bridge*** %11, align 8
  %14 = load i32, i32* @EPROBE_DEFER, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.drm_panel**, %struct.drm_panel*** %10, align 8
  %17 = icmp ne %struct.drm_panel** %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load %struct.drm_bridge**, %struct.drm_bridge*** %11, align 8
  %20 = icmp ne %struct.drm_bridge** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %85

24:                                               ; preds = %18, %5
  %25 = load %struct.drm_panel**, %struct.drm_panel*** %10, align 8
  %26 = icmp ne %struct.drm_panel** %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load %struct.drm_panel**, %struct.drm_panel*** %10, align 8
  store %struct.drm_panel* null, %struct.drm_panel** %28, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.device_node* @of_graph_get_remote_node(%struct.device_node* %30, i32 %31, i32 %32)
  store %struct.device_node* %33, %struct.device_node** %13, align 8
  %34 = load %struct.device_node*, %struct.device_node** %13, align 8
  %35 = icmp ne %struct.device_node* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %85

39:                                               ; preds = %29
  %40 = load %struct.device_node*, %struct.device_node** %13, align 8
  %41 = call i32 @of_device_is_available(%struct.device_node* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load %struct.device_node*, %struct.device_node** %13, align 8
  %45 = call i32 @of_node_put(%struct.device_node* %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %85

48:                                               ; preds = %39
  %49 = load %struct.drm_panel**, %struct.drm_panel*** %10, align 8
  %50 = icmp ne %struct.drm_panel** %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.device_node*, %struct.device_node** %13, align 8
  %53 = call %struct.drm_panel* @of_drm_find_panel(%struct.device_node* %52)
  %54 = load %struct.drm_panel**, %struct.drm_panel*** %10, align 8
  store %struct.drm_panel* %53, %struct.drm_panel** %54, align 8
  %55 = load %struct.drm_panel**, %struct.drm_panel*** %10, align 8
  %56 = load %struct.drm_panel*, %struct.drm_panel** %55, align 8
  %57 = call i32 @IS_ERR(%struct.drm_panel* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load %struct.drm_panel**, %struct.drm_panel*** %10, align 8
  store %struct.drm_panel* null, %struct.drm_panel** %61, align 8
  br label %62

62:                                               ; preds = %60, %59
  br label %63

63:                                               ; preds = %62, %48
  %64 = load %struct.drm_bridge**, %struct.drm_bridge*** %11, align 8
  %65 = icmp ne %struct.drm_bridge** %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.device_node*, %struct.device_node** %13, align 8
  %71 = call %struct.drm_bridge* @of_drm_find_bridge(%struct.device_node* %70)
  %72 = load %struct.drm_bridge**, %struct.drm_bridge*** %11, align 8
  store %struct.drm_bridge* %71, %struct.drm_bridge** %72, align 8
  %73 = load %struct.drm_bridge**, %struct.drm_bridge*** %11, align 8
  %74 = load %struct.drm_bridge*, %struct.drm_bridge** %73, align 8
  %75 = icmp ne %struct.drm_bridge* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %76, %69
  br label %80

78:                                               ; preds = %66
  %79 = load %struct.drm_bridge**, %struct.drm_bridge*** %11, align 8
  store %struct.drm_bridge* null, %struct.drm_bridge** %79, align 8
  br label %80

80:                                               ; preds = %78, %77
  br label %81

81:                                               ; preds = %80, %63
  %82 = load %struct.device_node*, %struct.device_node** %13, align 8
  %83 = call i32 @of_node_put(%struct.device_node* %82)
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %43, %36, %21
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.device_node* @of_graph_get_remote_node(%struct.device_node*, i32, i32) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.drm_panel* @of_drm_find_panel(%struct.device_node*) #1

declare dso_local i32 @IS_ERR(%struct.drm_panel*) #1

declare dso_local %struct.drm_bridge* @of_drm_find_bridge(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
