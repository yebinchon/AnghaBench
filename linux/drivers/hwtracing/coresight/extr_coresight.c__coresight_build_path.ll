; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c__coresight_build_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c__coresight_build_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.coresight_device* }
%struct.list_head = type { i32 }
%struct.coresight_node = type { i32, %struct.coresight_device* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, %struct.coresight_device*, %struct.list_head*)* @_coresight_build_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_coresight_build_path(%struct.coresight_device* %0, %struct.coresight_device* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.coresight_device*, align 8
  %6 = alloca %struct.coresight_device*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.coresight_node*, align 8
  %11 = alloca %struct.coresight_device*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %5, align 8
  store %struct.coresight_device* %1, %struct.coresight_device** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %13 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %14 = icmp eq %struct.coresight_device* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %56

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %20 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %17
  %26 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %27 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.coresight_device*, %struct.coresight_device** %34, align 8
  store %struct.coresight_device* %35, %struct.coresight_device** %11, align 8
  %36 = load %struct.coresight_device*, %struct.coresight_device** %11, align 8
  %37 = icmp ne %struct.coresight_device* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load %struct.coresight_device*, %struct.coresight_device** %11, align 8
  %40 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %41 = load %struct.list_head*, %struct.list_head** %7, align 8
  %42 = call i32 @_coresight_build_path(%struct.coresight_device* %39, %struct.coresight_device* %40, %struct.list_head* %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %49

45:                                               ; preds = %38, %25
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %17

49:                                               ; preds = %44, %17
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %74

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %15
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.coresight_node* @kzalloc(i32 16, i32 %57)
  store %struct.coresight_node* %58, %struct.coresight_node** %10, align 8
  %59 = load %struct.coresight_node*, %struct.coresight_node** %10, align 8
  %60 = icmp ne %struct.coresight_node* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %74

64:                                               ; preds = %56
  %65 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %66 = call i32 @coresight_grab_device(%struct.coresight_device* %65)
  %67 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %68 = load %struct.coresight_node*, %struct.coresight_node** %10, align 8
  %69 = getelementptr inbounds %struct.coresight_node, %struct.coresight_node* %68, i32 0, i32 1
  store %struct.coresight_device* %67, %struct.coresight_device** %69, align 8
  %70 = load %struct.coresight_node*, %struct.coresight_node** %10, align 8
  %71 = getelementptr inbounds %struct.coresight_node, %struct.coresight_node* %70, i32 0, i32 0
  %72 = load %struct.list_head*, %struct.list_head** %7, align 8
  %73 = call i32 @list_add(i32* %71, %struct.list_head* %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %64, %61, %52
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.coresight_node* @kzalloc(i32, i32) #1

declare dso_local i32 @coresight_grab_device(%struct.coresight_device*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
