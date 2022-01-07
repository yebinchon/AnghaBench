; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_extcon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_extcon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32, %struct.extcon_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.extcon_dev = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"no extcon found, switching to 'always on' mode\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid or missing extcon\0A\00", align 1
@sii8620_extcon_notifier = common dso_local global i32 0, align 4
@sii8620_extcon_work = common dso_local global i32 0, align 4
@EXTCON_DISP_MHL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to register notifier for MHL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii8620*)* @sii8620_extcon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii8620_extcon_init(%struct.sii8620* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sii8620*, align 8
  %4 = alloca %struct.extcon_dev*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %3, align 8
  %8 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %9 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.device_node* @of_graph_get_remote_node(i32 %12, i32 1, i32 -1)
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %14)
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %20 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i32 @dev_info(%struct.TYPE_5__* %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %73

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call %struct.extcon_dev* @extcon_find_edev_by_node(%struct.device_node* %24)
  store %struct.extcon_dev* %25, %struct.extcon_dev** %4, align 8
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  %28 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %29 = call i64 @IS_ERR(%struct.extcon_dev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %23
  %32 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %33 = call i32 @PTR_ERR(%struct.extcon_dev* %32)
  %34 = load i32, i32* @EPROBE_DEFER, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EPROBE_DEFER, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %73

40:                                               ; preds = %31
  %41 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %42 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = call i32 @dev_err(%struct.TYPE_5__* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %46 = call i32 @PTR_ERR(%struct.extcon_dev* %45)
  store i32 %46, i32* %2, align 4
  br label %73

47:                                               ; preds = %23
  %48 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %49 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %50 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %49, i32 0, i32 3
  store %struct.extcon_dev* %48, %struct.extcon_dev** %50, align 8
  %51 = load i32, i32* @sii8620_extcon_notifier, align 4
  %52 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %53 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %56 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %55, i32 0, i32 2
  %57 = load i32, i32* @sii8620_extcon_work, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %60 = load i32, i32* @EXTCON_DISP_MHL, align 4
  %61 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %62 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %61, i32 0, i32 1
  %63 = call i32 @extcon_register_notifier(%struct.extcon_dev* %59, i32 %60, %struct.TYPE_4__* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %47
  %67 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %68 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = call i32 @dev_err(%struct.TYPE_5__* %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %66, %40, %37, %18
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.device_node* @of_graph_get_remote_node(i32, i32, i32) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.extcon_dev* @extcon_find_edev_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.extcon_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.extcon_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @extcon_register_notifier(%struct.extcon_dev*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
