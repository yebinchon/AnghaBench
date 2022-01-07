; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-gd.c_ide_gd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-gd.c_ide_gd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.gendisk* }
%struct.gendisk = type { i32 }
%struct.ide_disk_obj = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, %struct.gendisk*)*, i32 (%struct.TYPE_6__*, %struct.gendisk*, i32)* }

@ENXIO = common dso_local global i32 0, align 4
@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@IDE_DFLAG_REMOVABLE = common dso_local global i32 0, align 4
@IDE_DFLAG_FORMAT_IN_PROGRESS = common dso_local global i32 0, align 4
@FMODE_NDELAY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IDE_DFLAG_WP = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@IDE_DFLAG_MEDIA_CHANGED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @ide_gd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_gd_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca %struct.ide_disk_obj*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.block_device*, %struct.block_device** %4, align 8
  %11 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i32 0, i32 0
  %12 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  store %struct.gendisk* %12, %struct.gendisk** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %14 = call %struct.ide_disk_obj* @ide_disk_get(%struct.gendisk* %13)
  store %struct.ide_disk_obj* %14, %struct.ide_disk_obj** %7, align 8
  %15 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %7, align 8
  %16 = icmp eq %struct.ide_disk_obj* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %117

20:                                               ; preds = %2
  %21 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %7, align 8
  %22 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %8, align 8
  %24 = load i32, i32* @IDE_DBG_FUNC, align 4
  %25 = call i32 @ide_debug_log(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %7, align 8
  %27 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IDE_DFLAG_REMOVABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %97

36:                                               ; preds = %20
  %37 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %7, align 8
  %38 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %97

41:                                               ; preds = %36
  %42 = load i32, i32* @IDE_DFLAG_FORMAT_IN_PROGRESS, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_6__*, %struct.gendisk*)*, i32 (%struct.TYPE_6__*, %struct.gendisk*)** %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %55 = call i32 %52(%struct.TYPE_6__* %53, %struct.gendisk* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %41
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @FMODE_NDELAY, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %109

66:                                               ; preds = %58, %41
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IDE_DFLAG_WP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @FMODE_WRITE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EROFS, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %109

81:                                               ; preds = %73, %66
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32 (%struct.TYPE_6__*, %struct.gendisk*, i32)*, i32 (%struct.TYPE_6__*, %struct.gendisk*, i32)** %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %89 = call i32 %86(%struct.TYPE_6__* %87, %struct.gendisk* %88, i32 1)
  %90 = load i32, i32* @IDE_DFLAG_MEDIA_CHANGED, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.block_device*, %struct.block_device** %4, align 8
  %96 = call i32 @check_disk_change(%struct.block_device* %95)
  br label %108

97:                                               ; preds = %36, %20
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IDE_DFLAG_FORMAT_IN_PROGRESS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %9, align 4
  br label %109

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %81
  store i32 0, i32* %3, align 4
  br label %117

109:                                              ; preds = %104, %78, %63
  %110 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %7, align 8
  %111 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %111, align 8
  %114 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %7, align 8
  %115 = call i32 @ide_disk_put(%struct.ide_disk_obj* %114)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %109, %108, %17
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.ide_disk_obj* @ide_disk_get(%struct.gendisk*) #1

declare dso_local i32 @ide_debug_log(i32, i8*) #1

declare dso_local i32 @check_disk_change(%struct.block_device*) #1

declare dso_local i32 @ide_disk_put(%struct.ide_disk_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
