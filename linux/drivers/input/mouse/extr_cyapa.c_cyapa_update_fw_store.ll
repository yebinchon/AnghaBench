; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_update_fw_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_update_fw_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cyapa = type { i32, i32* }

@NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"File name too long\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"firmware update failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"firmware update successfully done.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to re-detect after updated: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cyapa_update_fw_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_update_fw_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cyapa*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.cyapa* @dev_get_drvdata(%struct.device* %16)
  store %struct.cyapa* %17, %struct.cyapa** %10, align 8
  %18 = load i32, i32* @NAME_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* @NAME_MAX, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp uge i64 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %113

31:                                               ; preds = %4
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @memcpy(i8* %21, i8* %32, i64 %33)
  %35 = load i64, i64* %9, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %21, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %21, i64 %43
  store i8 0, i8* %44, align 1
  br label %48

45:                                               ; preds = %31
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i8, i8* %21, i64 %46
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %50 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %55 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @input_unregister_device(i32* %56)
  %58 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %59 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %53, %48
  %61 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %62 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock_interruptible(i32* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %68 = call i32 @cyapa_reinitialize(%struct.cyapa* %67)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %113

70:                                               ; preds = %60
  %71 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %72 = call i32 @cyapa_firmware(%struct.cyapa* %71, i8* %21)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %82

79:                                               ; preds = %70
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = call i32 @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %75
  %83 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %84 = call i32 @cyapa_reinitialize(%struct.cyapa* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %14, align 4
  br label %97

95:                                               ; preds = %87
  %96 = load i32, i32* %13, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %97, %82
  %100 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %101 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  br label %110

108:                                              ; preds = %99
  %109 = load i64, i64* %9, align 8
  br label %110

110:                                              ; preds = %108, %105
  %111 = phi i64 [ %107, %105 ], [ %109, %108 ]
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %113

113:                                              ; preds = %110, %66, %26
  %114 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.cyapa* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @input_unregister_device(i32*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @cyapa_reinitialize(%struct.cyapa*) #1

declare dso_local i32 @cyapa_firmware(%struct.cyapa*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
