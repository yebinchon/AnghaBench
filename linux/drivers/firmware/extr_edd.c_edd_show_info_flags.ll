; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_show_info_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_show_info_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edd_device = type { i32 }
%struct.edd_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EDD_INFO_DMA_BOUNDARY_ERROR_TRANSPARENT = common dso_local global i32 0, align 4
@left = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DMA boundary error transparent\0A\00", align 1
@EDD_INFO_GEOMETRY_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"geometry valid\0A\00", align 1
@EDD_INFO_REMOVABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"removable\0A\00", align 1
@EDD_INFO_WRITE_VERIFY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"write verify\0A\00", align 1
@EDD_INFO_MEDIA_CHANGE_NOTIFICATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"media change notification\0A\00", align 1
@EDD_INFO_LOCKABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"lockable\0A\00", align 1
@EDD_INFO_NO_MEDIA_PRESENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"no media present\0A\00", align 1
@EDD_INFO_USE_INT13_FN50 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"use int13 fn50\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edd_device*, i8*)* @edd_show_info_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edd_show_info_flags(%struct.edd_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edd_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.edd_info*, align 8
  %7 = alloca i8*, align 8
  store %struct.edd_device* %0, %struct.edd_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  %9 = load %struct.edd_device*, %struct.edd_device** %4, align 8
  %10 = icmp ne %struct.edd_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %152

14:                                               ; preds = %2
  %15 = load %struct.edd_device*, %struct.edd_device** %4, align 8
  %16 = call %struct.edd_info* @edd_dev_get_info(%struct.edd_device* %15)
  store %struct.edd_info* %16, %struct.edd_info** %6, align 8
  %17 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %18 = icmp ne %struct.edd_info* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %152

25:                                               ; preds = %19
  %26 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %27 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @EDD_INFO_DMA_BOUNDARY_ERROR_TRANSPARENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @left, align 4
  %36 = call i32 @scnprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %7, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %33, %25
  %41 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %42 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EDD_INFO_GEOMETRY_VALID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @left, align 4
  %51 = call i32 @scnprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i8*, i8** %7, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %48, %40
  %56 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %57 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EDD_INFO_REMOVABLE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* @left, align 4
  %66 = call i32 @scnprintf(i8* %64, i32 %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i8*, i8** %7, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %7, align 8
  br label %70

70:                                               ; preds = %63, %55
  %71 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %72 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @EDD_INFO_WRITE_VERIFY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* @left, align 4
  %81 = call i32 @scnprintf(i8* %79, i32 %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i8*, i8** %7, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %7, align 8
  br label %85

85:                                               ; preds = %78, %70
  %86 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %87 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @EDD_INFO_MEDIA_CHANGE_NOTIFICATION, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* @left, align 4
  %96 = call i32 @scnprintf(i8* %94, i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i8*, i8** %7, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %7, align 8
  br label %100

100:                                              ; preds = %93, %85
  %101 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %102 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @EDD_INFO_LOCKABLE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* @left, align 4
  %111 = call i32 @scnprintf(i8* %109, i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i8*, i8** %7, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %7, align 8
  br label %115

115:                                              ; preds = %108, %100
  %116 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %117 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @EDD_INFO_NO_MEDIA_PRESENT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %115
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* @left, align 4
  %126 = call i32 @scnprintf(i8* %124, i32 %125, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %127 = load i8*, i8** %7, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %7, align 8
  br label %130

130:                                              ; preds = %123, %115
  %131 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %132 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @EDD_INFO_USE_INT13_FN50, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* @left, align 4
  %141 = call i32 @scnprintf(i8* %139, i32 %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %142 = load i8*, i8** %7, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %7, align 8
  br label %145

145:                                              ; preds = %138, %130
  %146 = load i8*, i8** %7, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = ptrtoint i8* %146 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %145, %22, %11
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.edd_info* @edd_dev_get_info(%struct.edd_device*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
