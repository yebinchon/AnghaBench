; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_pushbuf_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_pushbuf_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_nouveau_gem_pushbuf_bo = type { i32 }
%struct.validate_op = type { i32 }
%struct.nouveau_cli = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"validate_init\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"validating bo list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.drm_file*, %struct.drm_nouveau_gem_pushbuf_bo*, i32, i32, %struct.validate_op*, i32*)* @nouveau_gem_pushbuf_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_gem_pushbuf_validate(%struct.nouveau_channel* %0, %struct.drm_file* %1, %struct.drm_nouveau_gem_pushbuf_bo* %2, i32 %3, i32 %4, %struct.validate_op* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_channel*, align 8
  %10 = alloca %struct.drm_file*, align 8
  %11 = alloca %struct.drm_nouveau_gem_pushbuf_bo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.validate_op*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nouveau_cli*, align 8
  %17 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %9, align 8
  store %struct.drm_file* %1, %struct.drm_file** %10, align 8
  store %struct.drm_nouveau_gem_pushbuf_bo* %2, %struct.drm_nouveau_gem_pushbuf_bo** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.validate_op* %5, %struct.validate_op** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.drm_file*, %struct.drm_file** %10, align 8
  %19 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %18)
  store %struct.nouveau_cli* %19, %struct.nouveau_cli** %16, align 8
  %20 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %21 = getelementptr inbounds %struct.validate_op, %struct.validate_op* %20, i32 0, i32 0
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load i32, i32* %13, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %77

26:                                               ; preds = %7
  %27 = load %struct.nouveau_channel*, %struct.nouveau_channel** %9, align 8
  %28 = load %struct.drm_file*, %struct.drm_file** %10, align 8
  %29 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %11, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %32 = call i32 @validate_init(%struct.nouveau_channel* %27, %struct.drm_file* %28, %struct.drm_nouveau_gem_pushbuf_bo* %29, i32 %30, %struct.validate_op* %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* @ERESTARTSYS, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @err, align 4
  %43 = load %struct.nouveau_cli*, %struct.nouveau_cli** %16, align 8
  %44 = call i32 @NV_PRINTK(i32 %42, %struct.nouveau_cli* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %8, align 4
  br label %77

47:                                               ; preds = %26
  %48 = load %struct.nouveau_channel*, %struct.nouveau_channel** %9, align 8
  %49 = load %struct.nouveau_cli*, %struct.nouveau_cli** %16, align 8
  %50 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %51 = getelementptr inbounds %struct.validate_op, %struct.validate_op* %50, i32 0, i32 0
  %52 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @validate_list(%struct.nouveau_channel* %48, %struct.nouveau_cli* %49, i32* %51, %struct.drm_nouveau_gem_pushbuf_bo* %52, i32 %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp slt i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %47
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @ERESTARTSYS, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @err, align 4
  %67 = load %struct.nouveau_cli*, %struct.nouveau_cli** %16, align 8
  %68 = call i32 @NV_PRINTK(i32 %66, %struct.nouveau_cli* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.validate_op*, %struct.validate_op** %14, align 8
  %71 = load %struct.nouveau_channel*, %struct.nouveau_channel** %9, align 8
  %72 = call i32 @validate_fini(%struct.validate_op* %70, %struct.nouveau_channel* %71, i32* null, i32* null)
  %73 = load i32, i32* %17, align 4
  store i32 %73, i32* %8, align 4
  br label %77

74:                                               ; preds = %47
  %75 = load i32, i32* %17, align 4
  %76 = load i32*, i32** %15, align 8
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %74, %69, %45, %25
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @validate_init(%struct.nouveau_channel*, %struct.drm_file*, %struct.drm_nouveau_gem_pushbuf_bo*, i32, %struct.validate_op*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NV_PRINTK(i32, %struct.nouveau_cli*, i8*) #1

declare dso_local i32 @validate_list(%struct.nouveau_channel*, %struct.nouveau_cli*, i32*, %struct.drm_nouveau_gem_pushbuf_bo*, i32) #1

declare dso_local i32 @validate_fini(%struct.validate_op*, %struct.nouveau_channel*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
