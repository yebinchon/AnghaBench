; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid_load.c_drm_load_edid_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid_load.c_drm_load_edid_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32 }
%struct.drm_connector = type { i8* }

@edid_firmware = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edid* @drm_load_edid_firmware(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.edid*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  store i8* null, i8** %10, align 8
  %15 = load i8*, i8** @edid_firmware, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.edid* @ERR_PTR(i32 %22)
  store %struct.edid* %23, %struct.edid** %2, align 8
  br label %102

24:                                               ; preds = %1
  %25 = load i8*, i8** @edid_firmware, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kstrdup(i8* %25, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.edid* @ERR_PTR(i32 %32)
  store %struct.edid* %33, %struct.edid** %2, align 8
  br label %102

34:                                               ; preds = %24
  %35 = load i8*, i8** %8, align 8
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %66, %55, %34
  %37 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 58)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i64 @strncmp(i8* %45, i8* %46, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %36

56:                                               ; preds = %44
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %5, align 8
  br label %67

59:                                               ; preds = %39
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %64, %59
  br label %36

67:                                               ; preds = %56, %36
  %68 = load i8*, i8** %5, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %10, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @kfree(i8* %74)
  %76 = load i32, i32* @ENOENT, align 4
  %77 = sub nsw i32 0, %76
  %78 = call %struct.edid* @ERR_PTR(i32 %77)
  store %struct.edid* %78, %struct.edid** %2, align 8
  br label %102

79:                                               ; preds = %70
  %80 = load i8*, i8** %10, align 8
  store i8* %80, i8** %5, align 8
  br label %81

81:                                               ; preds = %79, %67
  %82 = load i8*, i8** %5, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = getelementptr inbounds i8, i8* %86, i64 -1
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i8*, i8** %6, align 8
  store i8 0, i8* %93, align 1
  br label %94

94:                                               ; preds = %92, %81
  %95 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = call %struct.edid* @edid_load(%struct.drm_connector* %95, i8* %96, i8* %97)
  store %struct.edid* %98, %struct.edid** %11, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @kfree(i8* %99)
  %101 = load %struct.edid*, %struct.edid** %11, align 8
  store %struct.edid* %101, %struct.edid** %2, align 8
  br label %102

102:                                              ; preds = %94, %73, %30, %20
  %103 = load %struct.edid*, %struct.edid** %2, align 8
  ret %struct.edid* %103
}

declare dso_local %struct.edid* @ERR_PTR(i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.edid* @edid_load(%struct.drm_connector*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
