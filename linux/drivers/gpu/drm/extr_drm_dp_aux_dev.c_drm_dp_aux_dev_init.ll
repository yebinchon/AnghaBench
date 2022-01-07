; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_aux_dev.c_drm_dp_aux_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_aux_dev.c_drm_dp_aux_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"drm_dp_aux_dev\00", align 1
@drm_dp_aux_dev_class = common dso_local global %struct.TYPE_6__* null, align 8
@drm_dp_aux_groups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@auxdev_fops = common dso_local global i32 0, align 4
@drm_dev_major = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_aux_dev_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @THIS_MODULE, align 4
  %4 = call %struct.TYPE_6__* @class_create(i32 %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** @drm_dp_aux_dev_class, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drm_dp_aux_dev_class, align 8
  %6 = call i64 @IS_ERR(%struct.TYPE_6__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drm_dp_aux_dev_class, align 8
  %10 = call i32 @PTR_ERR(%struct.TYPE_6__* %9)
  store i32 %10, i32* %1, align 4
  br label %25

11:                                               ; preds = %0
  %12 = load i32, i32* @drm_dp_aux_groups, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drm_dp_aux_dev_class, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = call i32 @register_chrdev(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* @auxdev_fops)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* @drm_dev_major, align 4
  store i32 0, i32* %1, align 4
  br label %25

21:                                               ; preds = %18
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drm_dp_aux_dev_class, align 8
  %23 = call i32 @class_destroy(%struct.TYPE_6__* %22)
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %21, %19, %8
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local %struct.TYPE_6__* @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @register_chrdev(i32, i8*, i32*) #1

declare dso_local i32 @class_destroy(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
