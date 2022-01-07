; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_prepare_reshape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_rs_prepare_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i64, i64, i32, i32, %struct.TYPE_2__*, %struct.mddev }
%struct.TYPE_2__ = type { i8* }
%struct.mddev = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Can't reshape raid10 mirror groups\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ALGORITHM_RAID10_NEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Called with bogus raid type\00", align 1
@RT_FLAG_RESHAPE_RS = common dso_local global i32 0, align 4
@RT_FLAG_UPDATE_SBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*)* @rs_prepare_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_prepare_reshape(%struct.raid_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  %6 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %7 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %6, i32 0, i32 5
  store %struct.mddev* %7, %struct.mddev** %5, align 8
  %8 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %9 = call i64 @rs_is_raid10(%struct.raid_set* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %74

11:                                               ; preds = %1
  %12 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %13 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mddev*, %struct.mddev** %5, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %72

19:                                               ; preds = %11
  %20 = load %struct.mddev*, %struct.mddev** %5, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @__is_raid10_near(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %19
  %26 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %27 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %25
  %31 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %32 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mddev*, %struct.mddev** %5, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @__raid10_near_copies(i32 %36)
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %30
  %40 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %41 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %44 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = srem i64 %42, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %50 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %52, align 8
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %149

55:                                               ; preds = %39
  %56 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %57 = call i32 @__reorder_raid_disk_indexes(%struct.raid_set* %56)
  %58 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %59 = load i32, i32* @ALGORITHM_RAID10_NEAR, align 4
  %60 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %61 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @raid10_format_to_md_layout(%struct.raid_set* %58, i32 %59, i32 %63)
  %65 = load %struct.mddev*, %struct.mddev** %5, align 8
  %66 = getelementptr inbounds %struct.mddev, %struct.mddev* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.mddev*, %struct.mddev** %5, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mddev*, %struct.mddev** %5, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %4, align 4
  br label %73

72:                                               ; preds = %30, %25, %19, %11
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %55
  br label %122

74:                                               ; preds = %1
  %75 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %76 = call i64 @rs_is_raid456(%struct.raid_set* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  br label %121

79:                                               ; preds = %74
  %80 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %81 = call i64 @rs_is_raid1(%struct.raid_set* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %79
  %84 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %85 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %83
  %89 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %90 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %95 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 0, %96
  br label %102

98:                                               ; preds = %88
  %99 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %100 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  br label %102

102:                                              ; preds = %98, %93
  %103 = phi i32 [ %97, %93 ], [ %101, %98 ]
  %104 = load %struct.mddev*, %struct.mddev** %5, align 8
  %105 = getelementptr inbounds %struct.mddev, %struct.mddev* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  store i32 1, i32* %4, align 4
  br label %112

106:                                              ; preds = %83
  %107 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %108 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.mddev*, %struct.mddev** %5, align 8
  %111 = getelementptr inbounds %struct.mddev, %struct.mddev* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %106, %102
  br label %120

113:                                              ; preds = %79
  %114 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %115 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %114, i32 0, i32 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %117, align 8
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %149

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %78
  br label %122

122:                                              ; preds = %121, %73
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i32, i32* @RT_FLAG_RESHAPE_RS, align 4
  %127 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %128 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %127, i32 0, i32 3
  %129 = call i32 @set_bit(i32 %126, i32* %128)
  %130 = load i32, i32* @RT_FLAG_UPDATE_SBS, align 4
  %131 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %132 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %131, i32 0, i32 3
  %133 = call i32 @set_bit(i32 %130, i32* %132)
  br label %148

134:                                              ; preds = %122
  %135 = load %struct.mddev*, %struct.mddev** %5, align 8
  %136 = getelementptr inbounds %struct.mddev, %struct.mddev* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %139 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %137, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %134
  %143 = load i32, i32* @RT_FLAG_UPDATE_SBS, align 4
  %144 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %145 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %144, i32 0, i32 3
  %146 = call i32 @set_bit(i32 %143, i32* %145)
  br label %147

147:                                              ; preds = %142, %134
  br label %148

148:                                              ; preds = %147, %125
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %113, %48
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i64 @rs_is_raid10(%struct.raid_set*) #1

declare dso_local i64 @__is_raid10_near(i32) #1

declare dso_local i64 @__raid10_near_copies(i32) #1

declare dso_local i32 @__reorder_raid_disk_indexes(%struct.raid_set*) #1

declare dso_local i32 @raid10_format_to_md_layout(%struct.raid_set*, i32, i32) #1

declare dso_local i64 @rs_is_raid456(%struct.raid_set*) #1

declare dso_local i64 @rs_is_raid1(%struct.raid_set*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
