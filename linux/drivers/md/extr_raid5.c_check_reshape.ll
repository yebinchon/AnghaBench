; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_check_reshape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_check_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i64, i64, i64, i32, i32, %struct.r5conf* }
%struct.r5conf = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @check_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_reshape(%struct.mddev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %6 = load %struct.mddev*, %struct.mddev** %3, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 8
  %8 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  store %struct.r5conf* %8, %struct.r5conf** %4, align 8
  %9 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %10 = call i64 @raid5_has_log(%struct.r5conf* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %14 = call i64 @raid5_has_ppl(%struct.r5conf* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %147

19:                                               ; preds = %12
  %20 = load %struct.mddev*, %struct.mddev** %3, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load %struct.mddev*, %struct.mddev** %3, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mddev*, %struct.mddev** %3, align 8
  %29 = getelementptr inbounds %struct.mddev, %struct.mddev* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.mddev*, %struct.mddev** %3, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mddev*, %struct.mddev** %3, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %147

41:                                               ; preds = %32, %24, %19
  %42 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %43 = call i64 @has_failed(%struct.r5conf* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %147

48:                                               ; preds = %41
  %49 = load %struct.mddev*, %struct.mddev** %3, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %48
  %54 = load %struct.mddev*, %struct.mddev** %3, align 8
  %55 = getelementptr inbounds %struct.mddev, %struct.mddev* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MaxSector, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  store i32 2, i32* %5, align 4
  %60 = load %struct.mddev*, %struct.mddev** %3, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 6
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 4, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %59
  %66 = load %struct.mddev*, %struct.mddev** %3, align 8
  %67 = getelementptr inbounds %struct.mddev, %struct.mddev* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.mddev*, %struct.mddev** %3, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %147

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %53, %48
  %82 = load %struct.mddev*, %struct.mddev** %3, align 8
  %83 = call i32 @check_stripe_cache(%struct.mddev* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @ENOSPC, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %147

88:                                               ; preds = %81
  %89 = load %struct.mddev*, %struct.mddev** %3, align 8
  %90 = getelementptr inbounds %struct.mddev, %struct.mddev* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.mddev*, %struct.mddev** %3, align 8
  %93 = getelementptr inbounds %struct.mddev, %struct.mddev* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %101, label %96

96:                                               ; preds = %88
  %97 = load %struct.mddev*, %struct.mddev** %3, align 8
  %98 = getelementptr inbounds %struct.mddev, %struct.mddev* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %96, %88
  %102 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %103 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %104 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.mddev*, %struct.mddev** %3, align 8
  %107 = getelementptr inbounds %struct.mddev, %struct.mddev* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @max(i64 0, i64 %108)
  %110 = add nsw i64 %105, %109
  %111 = load %struct.mddev*, %struct.mddev** %3, align 8
  %112 = getelementptr inbounds %struct.mddev, %struct.mddev* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.mddev*, %struct.mddev** %3, align 8
  %115 = getelementptr inbounds %struct.mddev, %struct.mddev* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @max(i64 %113, i64 %116)
  %118 = call i64 @resize_chunks(%struct.r5conf* %102, i64 %110, i64 %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %101
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %147

123:                                              ; preds = %101
  br label %124

124:                                              ; preds = %123, %96
  %125 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %126 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mddev*, %struct.mddev** %3, align 8
  %129 = getelementptr inbounds %struct.mddev, %struct.mddev* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %127, %130
  %132 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %133 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp sle i64 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %147

137:                                              ; preds = %124
  %138 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %139 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %140 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.mddev*, %struct.mddev** %3, align 8
  %143 = getelementptr inbounds %struct.mddev, %struct.mddev* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = call i32 @resize_stripes(%struct.r5conf* %138, i64 %145)
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %137, %136, %120, %85, %77, %45, %40, %16
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @raid5_has_log(%struct.r5conf*) #1

declare dso_local i64 @raid5_has_ppl(%struct.r5conf*) #1

declare dso_local i64 @has_failed(%struct.r5conf*) #1

declare dso_local i32 @check_stripe_cache(%struct.mddev*) #1

declare dso_local i64 @resize_chunks(%struct.r5conf*, i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @resize_stripes(%struct.r5conf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
