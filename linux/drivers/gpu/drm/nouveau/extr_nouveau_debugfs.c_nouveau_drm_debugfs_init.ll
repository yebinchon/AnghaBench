; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_debugfs.c_nouveau_drm_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_debugfs.c_nouveau_drm_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.drm_minor = type { i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_7__ = type { i32 }

@nouveau_debugfs_files = common dso_local global %struct.TYPE_6__* null, align 8
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nouveau_debugfs_list = common dso_local global i32 0, align 4
@NOUVEAU_DEBUGFS_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"vbios.rom\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_drm_debugfs_init(%struct.drm_minor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_minor*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_minor* %0, %struct.drm_minor** %3, align 8
  %8 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %9 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nouveau_drm* @nouveau_drm(i32 %10)
  store %struct.nouveau_drm* %11, %struct.nouveau_drm** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %46, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nouveau_debugfs_files, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %12
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nouveau_debugfs_files, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @S_IRUGO, align 4
  %25 = load i32, i32* @S_IWUSR, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %28 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %31 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nouveau_debugfs_files, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.dentry* @debugfs_create_file(i32 %23, i32 %26, i32 %29, i32 %32, i32 %38)
  store %struct.dentry* %39, %struct.dentry** %5, align 8
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = icmp ne %struct.dentry* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %17
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %79

45:                                               ; preds = %17
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %12

49:                                               ; preds = %12
  %50 = load i32, i32* @nouveau_debugfs_list, align 4
  %51 = load i32, i32* @NOUVEAU_DEBUGFS_ENTRIES, align 4
  %52 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %53 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %56 = call i32 @drm_debugfs_create_files(i32 %50, i32 %51, i32 %54, %struct.drm_minor* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %79

61:                                               ; preds = %49
  %62 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %63 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.dentry* @debugfs_lookup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %64)
  store %struct.dentry* %65, %struct.dentry** %5, align 8
  %66 = load %struct.dentry*, %struct.dentry** %5, align 8
  %67 = icmp ne %struct.dentry* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %79

69:                                               ; preds = %61
  %70 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %71 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dentry*, %struct.dentry** %5, align 8
  %75 = call %struct.TYPE_7__* @d_inode(%struct.dentry* %74)
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.dentry*, %struct.dentry** %5, align 8
  %78 = call i32 @dput(%struct.dentry* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %69, %68, %59, %42
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_debugfs_create_files(i32, i32, i32, %struct.drm_minor*) #1

declare dso_local %struct.dentry* @debugfs_lookup(i8*, i32) #1

declare dso_local %struct.TYPE_7__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
