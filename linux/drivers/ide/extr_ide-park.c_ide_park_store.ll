; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-park.c_ide_park_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-park.c_ide_park_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@ide_setting_mtx = common dso_local global i32 0, align 4
@IDE_DFLAG_NO_UNLOAD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IDE_DFLAG_PARKED = common dso_local global i32 0, align 4
@ide_disk = common dso_local global i64 0, align 8
@MAX_PARK_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_park_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.TYPE_4__* @to_ide_device(%struct.device* %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtol(i8* %15, i32 10, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %102

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  %23 = icmp slt i64 %22, -2
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %102

27:                                               ; preds = %21
  %28 = load i64, i64* %11, align 8
  %29 = icmp sgt i64 %28, 30000
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  store i64 30000, i64* %11, align 8
  %31 = load i32, i32* @EOVERFLOW, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = call i32 @mutex_lock(i32* @ide_setting_mtx)
  %35 = load i64, i64* %11, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IDE_DFLAG_NO_UNLOAD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %63

47:                                               ; preds = %37
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IDE_DFLAG_PARKED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50, %47
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @msecs_to_jiffies(i64 %59)
  %61 = call i32 @issue_park_cmd(%struct.TYPE_4__* %58, i32 %60)
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %44
  br label %90

64:                                               ; preds = %33
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ide_disk, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load i64, i64* %11, align 8
  switch i64 %71, label %85 [
    i64 -1, label %72
    i64 -2, label %79
  ]

72:                                               ; preds = %70
  %73 = load i32, i32* @IDE_DFLAG_NO_UNLOAD, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %85

79:                                               ; preds = %70
  %80 = load i32, i32* @IDE_DFLAG_NO_UNLOAD, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %70, %79, %72
  br label %89

86:                                               ; preds = %64
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %89, %63
  %91 = call i32 @mutex_unlock(i32* @ide_setting_mtx)
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  br label %99

97:                                               ; preds = %90
  %98 = load i64, i64* %9, align 8
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i64 [ %96, %94 ], [ %98, %97 ]
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %99, %24, %19
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_4__* @to_ide_device(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @issue_park_cmd(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
