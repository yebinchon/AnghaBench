; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_set_syndrome_sources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_set_syndrome_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.stripe_head = type { i32, i32, i32, %struct.r5dev*, i64 }
%struct.r5dev = type { %struct.page*, %struct.page*, i32, i64 }

@SYNDROME_SRC_ALL = common dso_local global i32 0, align 4
@SYNDROME_SRC_WANT_DRAIN = common dso_local global i32 0, align 4
@R5_Wantdrain = common dso_local global i32 0, align 4
@R5_InJournal = common dso_local global i32 0, align 4
@SYNDROME_SRC_WRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page**, %struct.stripe_head*, i32)* @set_syndrome_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_syndrome_sources(%struct.page** %0, %struct.stripe_head* %1, i32 %2) #0 {
  %4 = alloca %struct.page**, align 8
  %5 = alloca %struct.stripe_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.r5dev*, align 8
  store %struct.page** %0, %struct.page*** %4, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %15 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %18 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 2
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ %22, %21 ], [ %25, %23 ]
  store i32 %27, i32* %8, align 4
  %28 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %29 = call i32 @raid6_d0(%struct.stripe_head* %28)
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %39, %26
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.page**, %struct.page*** %4, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.page*, %struct.page** %35, i64 %37
  store %struct.page* null, %struct.page** %38, align 8
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %30

42:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %138, %42
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @raid6_idx_to_slot(i32 %45, %struct.stripe_head* %46, i32* %10, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %50 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %49, i32 0, i32 3
  %51 = load %struct.r5dev*, %struct.r5dev** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %51, i64 %53
  store %struct.r5dev* %54, %struct.r5dev** %13, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %57 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %101, label %60

60:                                               ; preds = %44
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %63 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %101, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @SYNDROME_SRC_ALL, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %101, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SYNDROME_SRC_WANT_DRAIN, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i32, i32* @R5_Wantdrain, align 4
  %76 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %77 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %76, i32 0, i32 2
  %78 = call i64 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @R5_InJournal, align 4
  %82 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %83 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %82, i32 0, i32 2
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %80, %70
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @SYNDROME_SRC_WRITTEN, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %134

90:                                               ; preds = %86
  %91 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %92 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @R5_InJournal, align 4
  %97 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %98 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %97, i32 0, i32 2
  %99 = call i64 @test_bit(i32 %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %134

101:                                              ; preds = %95, %90, %80, %74, %66, %60, %44
  %102 = load i32, i32* @R5_InJournal, align 4
  %103 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %104 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %103, i32 0, i32 2
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %101
  %108 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %109 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %108, i32 0, i32 3
  %110 = load %struct.r5dev*, %struct.r5dev** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %110, i64 %112
  %114 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %113, i32 0, i32 1
  %115 = load %struct.page*, %struct.page** %114, align 8
  %116 = load %struct.page**, %struct.page*** %4, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.page*, %struct.page** %116, i64 %118
  store %struct.page* %115, %struct.page** %119, align 8
  br label %133

120:                                              ; preds = %101
  %121 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %122 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %121, i32 0, i32 3
  %123 = load %struct.r5dev*, %struct.r5dev** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %123, i64 %125
  %127 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %126, i32 0, i32 0
  %128 = load %struct.page*, %struct.page** %127, align 8
  %129 = load %struct.page**, %struct.page*** %4, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.page*, %struct.page** %129, i64 %131
  store %struct.page* %128, %struct.page** %132, align 8
  br label %133

133:                                              ; preds = %120, %107
  br label %134

134:                                              ; preds = %133, %95, %86
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @raid6_next_disk(i32 %135, i32 %136)
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %44, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local i32 @raid6_d0(%struct.stripe_head*) #1

declare dso_local i32 @raid6_idx_to_slot(i32, %struct.stripe_head*, i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @raid6_next_disk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
