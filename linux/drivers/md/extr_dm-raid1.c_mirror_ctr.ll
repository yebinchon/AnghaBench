; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, i32, %struct.mirror_set* }
%struct.mirror_set = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.dm_dirty_log = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_dirty_log*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@MAX_NR_MIRRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid number of mirrors\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Too few mirror arguments\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"kmirrord\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"couldn't start kmirrord\00", align 1
@do_mirror = common dso_local global i32 0, align 4
@delayed_wake_fn = common dso_local global i32 0, align 4
@trigger_event = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Too many mirror arguments\00", align 1
@dm_kcopyd_throttle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @mirror_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirror_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mirror_set*, align 8
  %13 = alloca %struct.dm_dirty_log*, align 8
  %14 = alloca i8, align 1
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %15 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i8**, i8*** %7, align 8
  %18 = call %struct.dm_dirty_log* @create_dirty_log(%struct.dm_target* %15, i32 %16, i8** %17, i32* %11)
  store %struct.dm_dirty_log* %18, %struct.dm_dirty_log** %13, align 8
  %19 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %20 = icmp ne %struct.dm_dirty_log* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %215

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  %26 = load i8**, i8*** %7, align 8
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  store i8** %28, i8*** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %24
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %9, i8* %14)
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MAX_NR_MIRRORS, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43, %40, %34, %24
  %48 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %49 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %51 = call i32 @dm_dirty_log_destroy(%struct.dm_dirty_log* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %215

54:                                               ; preds = %43
  %55 = load i8**, i8*** %7, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %7, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  %61 = mul i32 %60, 2
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %65 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %65, align 8
  %66 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %67 = call i32 @dm_dirty_log_destroy(%struct.dm_dirty_log* %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %215

70:                                               ; preds = %54
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %73 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.dm_dirty_log*)*, i32 (%struct.dm_dirty_log*)** %75, align 8
  %77 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %78 = call i32 %76(%struct.dm_dirty_log* %77)
  %79 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %80 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %81 = call %struct.mirror_set* @alloc_context(i32 %71, i32 %78, %struct.dm_target* %79, %struct.dm_dirty_log* %80)
  store %struct.mirror_set* %81, %struct.mirror_set** %12, align 8
  %82 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %83 = icmp ne %struct.mirror_set* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %70
  %85 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %86 = call i32 @dm_dirty_log_destroy(%struct.dm_dirty_log* %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %215

89:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %113, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %90
  %95 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %96 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i8**, i8*** %7, align 8
  %99 = call i32 @get_mirror(%struct.mirror_set* %95, %struct.dm_target* %96, i32 %97, i8** %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %104 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @free_context(%struct.mirror_set* %103, %struct.dm_target* %104, i32 %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %215

108:                                              ; preds = %94
  %109 = load i8**, i8*** %7, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 2
  store i8** %110, i8*** %7, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sub i32 %111, 2
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %90

116:                                              ; preds = %90
  %117 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %118 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %119 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %118, i32 0, i32 4
  store %struct.mirror_set* %117, %struct.mirror_set** %119, align 8
  %120 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %121 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %122 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dm_rh_get_region_size(i32 %123)
  %125 = call i32 @dm_set_target_max_io_len(%struct.dm_target* %120, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %207

129:                                              ; preds = %116
  %130 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %131 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %130, i32 0, i32 1
  store i32 1, i32* %131, align 8
  %132 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %133 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %132, i32 0, i32 2
  store i32 1, i32* %133, align 4
  %134 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %135 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %134, i32 0, i32 3
  store i32 4, i32* %135, align 8
  %136 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %137 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %136, i32 0)
  %138 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %139 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %141 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %129
  %145 = call i32 @DMERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %8, align 4
  br label %207

148:                                              ; preds = %129
  %149 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %150 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %149, i32 0, i32 6
  %151 = load i32, i32* @do_mirror, align 4
  %152 = call i32 @INIT_WORK(i32* %150, i32 %151)
  %153 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %154 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %153, i32 0, i32 5
  %155 = load i32, i32* @delayed_wake_fn, align 4
  %156 = call i32 @timer_setup(i32* %154, i32 %155, i32 0)
  %157 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %158 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %157, i32 0, i32 4
  store i64 0, i64* %158, align 8
  %159 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %160 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %159, i32 0, i32 3
  %161 = load i32, i32* @trigger_event, align 4
  %162 = call i32 @INIT_WORK(i32* %160, i32 %161)
  %163 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i8**, i8*** %7, align 8
  %166 = call i32 @parse_features(%struct.mirror_set* %163, i32 %164, i8** %165, i32* %11)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %148
  br label %202

170:                                              ; preds = %148
  %171 = load i32, i32* %11, align 4
  %172 = load i8**, i8*** %7, align 8
  %173 = zext i32 %171 to i64
  %174 = getelementptr inbounds i8*, i8** %172, i64 %173
  store i8** %174, i8*** %7, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %6, align 4
  %177 = sub i32 %176, %175
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %170
  %181 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %182 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %181, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %182, align 8
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %8, align 4
  br label %202

185:                                              ; preds = %170
  %186 = call i32 @dm_kcopyd_client_create(i32* @dm_kcopyd_throttle)
  %187 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %188 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %190 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @IS_ERR(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %185
  %195 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %196 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @PTR_ERR(i32 %197)
  store i32 %198, i32* %8, align 4
  br label %202

199:                                              ; preds = %185
  %200 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %201 = call i32 @wakeup_mirrord(%struct.mirror_set* %200)
  store i32 0, i32* %4, align 4
  br label %215

202:                                              ; preds = %194, %180, %169
  %203 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %204 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @destroy_workqueue(i32 %205)
  br label %207

207:                                              ; preds = %202, %144, %128
  %208 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %209 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %210 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %211 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @free_context(%struct.mirror_set* %208, %struct.dm_target* %209, i32 %212)
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %207, %199, %102, %84, %63, %47, %21
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.dm_dirty_log* @create_dirty_log(%struct.dm_target*, i32, i8**, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @dm_dirty_log_destroy(%struct.dm_dirty_log*) #1

declare dso_local %struct.mirror_set* @alloc_context(i32, i32, %struct.dm_target*, %struct.dm_dirty_log*) #1

declare dso_local i32 @get_mirror(%struct.mirror_set*, %struct.dm_target*, i32, i8**) #1

declare dso_local i32 @free_context(%struct.mirror_set*, %struct.dm_target*, i32) #1

declare dso_local i32 @dm_set_target_max_io_len(%struct.dm_target*, i32) #1

declare dso_local i32 @dm_rh_get_region_size(i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @parse_features(%struct.mirror_set*, i32, i8**, i32*) #1

declare dso_local i32 @dm_kcopyd_client_create(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @wakeup_mirrord(%struct.mirror_set*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
