; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_add_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, %struct.r5conf* }
%struct.r5conf = type { i32, i64, i32, %struct.disk_info*, i64 }
%struct.disk_info = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@Journal = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@Replacement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @raid5_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_add_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.disk_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %13 = load %struct.mddev*, %struct.mddev** %4, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 1
  %15 = load %struct.r5conf*, %struct.r5conf** %14, align 8
  store %struct.r5conf* %15, %struct.r5conf** %6, align 8
  %16 = load i32, i32* @EEXIST, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %19 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @Journal, align 4
  %23 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %24 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %23, i32 0, i32 2
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %2
  %28 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %29 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %213

35:                                               ; preds = %27
  %36 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %37 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %39 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %40 = call i32 @log_init(%struct.r5conf* %38, %struct.md_rdev* %39, i32 0)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %213

45:                                               ; preds = %35
  %46 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %47 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @r5l_start(i64 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %213

54:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %213

55:                                               ; preds = %2
  %56 = load %struct.mddev*, %struct.mddev** %4, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %60 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %213

66:                                               ; preds = %55
  %67 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %68 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %73 = call i64 @has_failed(%struct.r5conf* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %213

78:                                               ; preds = %71, %66
  %79 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %80 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %85 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %12, align 4
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %89 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %87
  %93 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %94 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %100 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %99, i32 0, i32 3
  %101 = load %struct.disk_info*, %struct.disk_info** %100, align 8
  %102 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %103 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %101, i64 %105
  %107 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = icmp eq %struct.TYPE_2__* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %112 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %98, %92, %87
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %157, %114
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp sle i32 %117, %118
  br i1 %119, label %120, label %160

120:                                              ; preds = %116
  %121 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %122 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %121, i32 0, i32 3
  %123 = load %struct.disk_info*, %struct.disk_info** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %123, i64 %125
  store %struct.disk_info* %126, %struct.disk_info** %10, align 8
  %127 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %128 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = icmp eq %struct.TYPE_2__* %129, null
  br i1 %130, label %131, label %156

131:                                              ; preds = %120
  %132 = load i32, i32* @In_sync, align 4
  %133 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %134 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %133, i32 0, i32 2
  %135 = call i32 @clear_bit(i32 %132, i32* %134)
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %138 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %140 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %131
  %145 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %146 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %145, i32 0, i32 2
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %131
  %148 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %149 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %148, i32 0, i32 1
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %152 = call i32 @rcu_assign_pointer(%struct.TYPE_2__* %150, %struct.md_rdev* %151)
  %153 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %154 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %155 = call i32 @log_modify(%struct.r5conf* %153, %struct.md_rdev* %154, i32 1)
  store i32 %155, i32* %8, align 4
  br label %209

156:                                              ; preds = %120
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %116

160:                                              ; preds = %116
  %161 = load i32, i32* %11, align 4
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %205, %160
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp sle i32 %163, %164
  br i1 %165, label %166, label %208

166:                                              ; preds = %162
  %167 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %168 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %167, i32 0, i32 3
  %169 = load %struct.disk_info*, %struct.disk_info** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %169, i64 %171
  store %struct.disk_info* %172, %struct.disk_info** %10, align 8
  %173 = load i32, i32* @WantReplacement, align 4
  %174 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %175 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %174, i32 0, i32 1
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = call i64 @test_bit(i32 %173, i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %204

180:                                              ; preds = %166
  %181 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %182 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %181, i32 0, i32 0
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = icmp eq %struct.TYPE_2__* %183, null
  br i1 %184, label %185, label %204

185:                                              ; preds = %180
  %186 = load i32, i32* @In_sync, align 4
  %187 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %188 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %187, i32 0, i32 2
  %189 = call i32 @clear_bit(i32 %186, i32* %188)
  %190 = load i32, i32* @Replacement, align 4
  %191 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %192 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %191, i32 0, i32 2
  %193 = call i32 @set_bit(i32 %190, i32* %192)
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %196 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  store i32 0, i32* %8, align 4
  %197 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %198 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %197, i32 0, i32 2
  store i32 1, i32* %198, align 8
  %199 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %200 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %199, i32 0, i32 0
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %203 = call i32 @rcu_assign_pointer(%struct.TYPE_2__* %201, %struct.md_rdev* %202)
  br label %208

204:                                              ; preds = %180, %166
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %162

208:                                              ; preds = %185, %162
  br label %209

209:                                              ; preds = %208, %147
  %210 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %211 = call i32 @print_raid5_conf(%struct.r5conf* %210)
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %209, %75, %63, %54, %52, %43, %32
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @log_init(%struct.r5conf*, %struct.md_rdev*, i32) #1

declare dso_local i32 @r5l_start(i64) #1

declare dso_local i64 @has_failed(%struct.r5conf*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.TYPE_2__*, %struct.md_rdev*) #1

declare dso_local i32 @log_modify(%struct.r5conf*, %struct.md_rdev*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @print_raid5_conf(%struct.r5conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
