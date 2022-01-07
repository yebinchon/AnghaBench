; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_calc_degraded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_calc_degraded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.md_rdev = type { i32 }

@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raid5_calc_degraded(%struct.r5conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca %struct.md_rdev*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  %9 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %77, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %13 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %80

16:                                               ; preds = %10
  %17 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %18 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.md_rdev* @rcu_dereference(i32 %24)
  store %struct.md_rdev* %25, %struct.md_rdev** %7, align 8
  %26 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %27 = icmp ne %struct.md_rdev* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %16
  %29 = load i32, i32* @Faulty, align 4
  %30 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %31 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %36 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.md_rdev* @rcu_dereference(i32 %42)
  store %struct.md_rdev* %43, %struct.md_rdev** %7, align 8
  br label %44

44:                                               ; preds = %34, %28, %16
  %45 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %46 = icmp ne %struct.md_rdev* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* @Faulty, align 4
  %49 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 0
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %44
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %76

56:                                               ; preds = %47
  %57 = load i32, i32* @In_sync, align 4
  %58 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %59 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %58, i32 0, i32 0
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %75

63:                                               ; preds = %56
  %64 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %65 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %68 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %63
  br label %75

75:                                               ; preds = %74, %62
  br label %76

76:                                               ; preds = %75, %53
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %10

80:                                               ; preds = %10
  %81 = call i32 (...) @rcu_read_unlock()
  %82 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %83 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %86 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %172

91:                                               ; preds = %80
  %92 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %160, %91
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %96 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %163

99:                                               ; preds = %93
  %100 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %101 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.md_rdev* @rcu_dereference(i32 %107)
  store %struct.md_rdev* %108, %struct.md_rdev** %8, align 8
  %109 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %110 = icmp ne %struct.md_rdev* %109, null
  br i1 %110, label %111, label %127

111:                                              ; preds = %99
  %112 = load i32, i32* @Faulty, align 4
  %113 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %114 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %113, i32 0, i32 0
  %115 = call i64 @test_bit(i32 %112, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %119 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %118, i32 0, i32 2
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.md_rdev* @rcu_dereference(i32 %125)
  store %struct.md_rdev* %126, %struct.md_rdev** %8, align 8
  br label %127

127:                                              ; preds = %117, %111, %99
  %128 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %129 = icmp ne %struct.md_rdev* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i32, i32* @Faulty, align 4
  %132 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %133 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %132, i32 0, i32 0
  %134 = call i64 @test_bit(i32 %131, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130, %127
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %159

139:                                              ; preds = %130
  %140 = load i32, i32* @In_sync, align 4
  %141 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %142 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %141, i32 0, i32 0
  %143 = call i64 @test_bit(i32 %140, i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %158

146:                                              ; preds = %139
  %147 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %148 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %151 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp sle i32 %149, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %154, %146
  br label %158

158:                                              ; preds = %157, %145
  br label %159

159:                                              ; preds = %158, %136
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %93

163:                                              ; preds = %93
  %164 = call i32 (...) @rcu_read_unlock()
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* %5, align 4
  store i32 %169, i32* %2, align 4
  br label %172

170:                                              ; preds = %163
  %171 = load i32, i32* %4, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %170, %168, %89
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
