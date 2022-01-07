; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_remove_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_remove_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, %struct.r5conf* }
%struct.r5conf = type { i32, i64, i64, i32, i32, i32, i64, %struct.disk_info* }
%struct.disk_info = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32, i32, i32 }

@Journal = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@RemoveSynchronized = common dso_local global i32 0, align 4
@Replacement = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @raid5_remove_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_remove_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev**, align 8
  %10 = alloca %struct.disk_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %11 = load %struct.mddev*, %struct.mddev** %4, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 1
  %13 = load %struct.r5conf*, %struct.r5conf** %12, align 8
  store %struct.r5conf* %13, %struct.r5conf** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %15 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %18 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %17, i32 0, i32 7
  %19 = load %struct.disk_info*, %struct.disk_info** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %19, i64 %21
  store %struct.disk_info* %22, %struct.disk_info** %10, align 8
  %23 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %24 = call i32 @print_raid5_conf(%struct.r5conf* %23)
  %25 = load i32, i32* @Journal, align 4
  %26 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %27 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %2
  %31 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %32 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %37 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %36, i32 0, i32 5
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %42 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %41, i32 0, i32 4
  %43 = call i64 @atomic_read(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %47 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %46, i32 0, i32 3
  %48 = call i64 @atomic_read(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %40, %35
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %213

53:                                               ; preds = %45
  %54 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %55 = call i32 @log_exit(%struct.r5conf* %54)
  store i32 0, i32* %3, align 4
  br label %213

56:                                               ; preds = %30, %2
  %57 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %58 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %59 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %58, i32 0, i32 0
  %60 = load %struct.md_rdev*, %struct.md_rdev** %59, align 8
  %61 = icmp eq %struct.md_rdev* %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %64 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %63, i32 0, i32 0
  store %struct.md_rdev** %64, %struct.md_rdev*** %9, align 8
  br label %76

65:                                               ; preds = %56
  %66 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %67 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %68 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %67, i32 0, i32 1
  %69 = load %struct.md_rdev*, %struct.md_rdev** %68, align 8
  %70 = icmp eq %struct.md_rdev* %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %73 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %72, i32 0, i32 1
  store %struct.md_rdev** %73, %struct.md_rdev*** %9, align 8
  br label %75

74:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %213

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %62
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %79 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sge i32 %77, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %84 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MaxSector, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32, i32* @In_sync, align 4
  %90 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %91 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %90, i32 0, i32 1
  %92 = call i32 @clear_bit(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %88, %82, %76
  %94 = load i32, i32* @In_sync, align 4
  %95 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %96 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %95, i32 0, i32 1
  %97 = call i64 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %93
  %100 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %101 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %100, i32 0, i32 2
  %102 = call i64 @atomic_read(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99, %93
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %209

107:                                              ; preds = %99
  %108 = load i32, i32* @Faulty, align 4
  %109 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %110 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %109, i32 0, i32 1
  %111 = call i64 @test_bit(i32 %108, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %145, label %113

113:                                              ; preds = %107
  %114 = load %struct.mddev*, %struct.mddev** %4, align 8
  %115 = getelementptr inbounds %struct.mddev, %struct.mddev* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %118 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %113
  %122 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %123 = call i32 @has_failed(%struct.r5conf* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %145, label %125

125:                                              ; preds = %121
  %126 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %127 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %126, i32 0, i32 1
  %128 = load %struct.md_rdev*, %struct.md_rdev** %127, align 8
  %129 = icmp ne %struct.md_rdev* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %132 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %131, i32 0, i32 1
  %133 = load %struct.md_rdev*, %struct.md_rdev** %132, align 8
  %134 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %135 = icmp eq %struct.md_rdev* %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %130, %125
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %139 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i32, i32* @EBUSY, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %7, align 4
  br label %209

145:                                              ; preds = %136, %130, %121, %113, %107
  %146 = load %struct.md_rdev**, %struct.md_rdev*** %9, align 8
  store %struct.md_rdev* null, %struct.md_rdev** %146, align 8
  %147 = load i32, i32* @RemoveSynchronized, align 4
  %148 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %149 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %148, i32 0, i32 1
  %150 = call i64 @test_bit(i32 %147, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %164, label %152

152:                                              ; preds = %145
  %153 = call i32 (...) @synchronize_rcu()
  %154 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %155 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %154, i32 0, i32 2
  %156 = call i64 @atomic_read(i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load i32, i32* @EBUSY, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %7, align 4
  %161 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %162 = load %struct.md_rdev**, %struct.md_rdev*** %9, align 8
  store %struct.md_rdev* %161, %struct.md_rdev** %162, align 8
  br label %163

163:                                              ; preds = %158, %152
  br label %164

164:                                              ; preds = %163, %145
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %164
  %168 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %169 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %170 = call i32 @log_modify(%struct.r5conf* %168, %struct.md_rdev* %169, i32 0)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %209

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %164
  %176 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %177 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %176, i32 0, i32 1
  %178 = load %struct.md_rdev*, %struct.md_rdev** %177, align 8
  %179 = icmp ne %struct.md_rdev* %178, null
  br i1 %179, label %180, label %204

180:                                              ; preds = %175
  %181 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %182 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %181, i32 0, i32 1
  %183 = load %struct.md_rdev*, %struct.md_rdev** %182, align 8
  %184 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %185 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %184, i32 0, i32 0
  store %struct.md_rdev* %183, %struct.md_rdev** %185, align 8
  %186 = load i32, i32* @Replacement, align 4
  %187 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %188 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %187, i32 0, i32 1
  %189 = load %struct.md_rdev*, %struct.md_rdev** %188, align 8
  %190 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %189, i32 0, i32 1
  %191 = call i32 @clear_bit(i32 %186, i32* %190)
  %192 = call i32 (...) @smp_mb()
  %193 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %194 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %193, i32 0, i32 1
  store %struct.md_rdev* null, %struct.md_rdev** %194, align 8
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %180
  %198 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %199 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %200 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %199, i32 0, i32 0
  %201 = load %struct.md_rdev*, %struct.md_rdev** %200, align 8
  %202 = call i32 @log_modify(%struct.r5conf* %198, %struct.md_rdev* %201, i32 1)
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %197, %180
  br label %204

204:                                              ; preds = %203, %175
  %205 = load i32, i32* @WantReplacement, align 4
  %206 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %207 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %206, i32 0, i32 1
  %208 = call i32 @clear_bit(i32 %205, i32* %207)
  br label %209

209:                                              ; preds = %204, %173, %142, %104
  %210 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %211 = call i32 @print_raid5_conf(%struct.r5conf* %210)
  %212 = load i32, i32* %7, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %209, %74, %53, %50
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @print_raid5_conf(%struct.r5conf*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @log_exit(%struct.r5conf*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @has_failed(%struct.r5conf*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @log_modify(%struct.r5conf*, %struct.md_rdev*, i32) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
