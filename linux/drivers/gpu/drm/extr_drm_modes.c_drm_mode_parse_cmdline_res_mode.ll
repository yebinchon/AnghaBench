; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_parse_cmdline_res_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_parse_cmdline_res_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_cmdline_mode = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.drm_connector*, %struct.drm_cmdline_mode*)* @drm_mode_parse_cmdline_res_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_mode_parse_cmdline_res_mode(i8* %0, i32 %1, i32 %2, %struct.drm_connector* %3, %struct.drm_cmdline_mode* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_connector*, align 8
  %11 = alloca %struct.drm_cmdline_mode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.drm_connector* %3, %struct.drm_connector** %10, align 8
  store %struct.drm_cmdline_mode* %4, %struct.drm_cmdline_mode** %11, align 8
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @simple_strtol(i8* %22, i8** %19, i32 10)
  store i32 %23, i32* %15, align 4
  %24 = load i8*, i8** %19, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %117

30:                                               ; preds = %5
  %31 = load i8*, i8** %19, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 120
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %117

39:                                               ; preds = %30
  %40 = load i8*, i8** %19, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %19, align 8
  %42 = load i8*, i8** %19, align 8
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @simple_strtol(i8* %43, i8** %19, i32 10)
  store i32 %44, i32* %16, align 4
  %45 = load i8*, i8** %19, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %117

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = load i8*, i8** %19, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sub nsw i64 %53, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %117

66:                                               ; preds = %51
  store i32 0, i32* %18, align 4
  br label %67

67:                                               ; preds = %101, %66
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load i8*, i8** %19, align 8
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  switch i32 %77, label %80 [
    i32 77, label %78
    i32 82, label %79
  ]

78:                                               ; preds = %71
  store i32 1, i32* %14, align 4
  br label %100

79:                                               ; preds = %71
  store i32 1, i32* %13, align 4
  br label %100

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load i8*, i8** %19, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %89 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %90 = call i32 @drm_mode_parse_cmdline_extra(i8* %87, i32 1, i32 0, %struct.drm_connector* %88, %struct.drm_cmdline_mode* %89)
  store i32 %90, i32* %20, align 4
  %91 = load i32, i32* %20, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* %20, align 4
  store i32 %94, i32* %6, align 4
  br label %117

95:                                               ; preds = %83
  br label %99

96:                                               ; preds = %80
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %117

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99, %79, %78
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %67

104:                                              ; preds = %67
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %107 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %110 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %113 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %11, align 8
  %116 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %104, %96, %93, %63, %48, %36, %27
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @simple_strtol(i8*, i8**, i32) #1

declare dso_local i32 @drm_mode_parse_cmdline_extra(i8*, i32, i32, %struct.drm_connector*, %struct.drm_cmdline_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
