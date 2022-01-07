; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64 }
%struct.mirror_set = type { i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dm_dirty_log = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.dm_dirty_log*, i32, i8*, i32)*, i64 (%struct.dm_dirty_log*)* }

@MAX_NR_MIRRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%llu/%llu 1 %s \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" %s %llu\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c" handle_errors\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" keep_log\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, i32, i32, i8*, i32)* @mirror_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mirror_status(%struct.dm_target* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mirror_set*, align 8
  %15 = alloca %struct.dm_dirty_log*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %19 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.mirror_set*
  store %struct.mirror_set* %21, %struct.mirror_set** %14, align 8
  %22 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %23 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.dm_dirty_log* @dm_rh_dirty_log(i32 %24)
  store %struct.dm_dirty_log* %25, %struct.dm_dirty_log** %15, align 8
  %26 = load i32, i32* @MAX_NR_MIRRORS, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %16, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %17, align 8
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %179 [
    i32 129, label %32
    i32 128, label %100
  ]

32:                                               ; preds = %5
  %33 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %34 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %65, %32
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %40 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  %44 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %45 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %56 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = call signext i8 @device_status_char(%struct.TYPE_6__* %60)
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %30, i64 %63
  store i8 %61, i8* %64, align 1
  br label %65

65:                                               ; preds = %43
  %66 = load i32, i32* %11, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %37

68:                                               ; preds = %37
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %30, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %15, align 8
  %73 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64 (%struct.dm_dirty_log*)*, i64 (%struct.dm_dirty_log*)** %75, align 8
  %77 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %15, align 8
  %78 = call i64 %76(%struct.dm_dirty_log* %77)
  %79 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %80 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %78, i64 %81, i8* %30)
  %83 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %15, align 8
  %84 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32 (%struct.dm_dirty_log*, i32, i8*, i32)*, i32 (%struct.dm_dirty_log*, i32, i8*, i32)** %86, align 8
  %88 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %15, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %12, align 4
  %96 = sub i32 %94, %95
  %97 = call i32 %87(%struct.dm_dirty_log* %88, i32 %89, i8* %93, i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %179

100:                                              ; preds = %5
  %101 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %15, align 8
  %102 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32 (%struct.dm_dirty_log*, i32, i8*, i32)*, i32 (%struct.dm_dirty_log*, i32, i8*, i32)** %104, align 8
  %106 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %15, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 %105(%struct.dm_dirty_log* %106, i32 %107, i8* %108, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %112 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %141, %100
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %118 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ult i32 %116, %119
  br i1 %120, label %121, label %144

121:                                              ; preds = %115
  %122 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %123 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %133 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %131, i64 %139)
  br label %141

141:                                              ; preds = %121
  %142 = load i32, i32* %11, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %115

144:                                              ; preds = %115
  %145 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %146 = call i32 @errors_handled(%struct.mirror_set* %145)
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %13, align 4
  %153 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %154 = call i32 @keep_log(%struct.mirror_set* %153)
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %144
  %164 = load i32, i32* %13, align 4
  %165 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  %166 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %167 = call i32 @errors_handled(%struct.mirror_set* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %163
  %172 = load %struct.mirror_set*, %struct.mirror_set** %14, align 8
  %173 = call i32 @keep_log(%struct.mirror_set* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %171
  br label %178

178:                                              ; preds = %177, %144
  br label %179

179:                                              ; preds = %5, %178, %68
  %180 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %180)
  ret void
}

declare dso_local %struct.dm_dirty_log* @dm_rh_dirty_log(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DMEMIT(i8*, ...) #1

declare dso_local signext i8 @device_status_char(%struct.TYPE_6__*) #1

declare dso_local i32 @errors_handled(%struct.mirror_set*) #1

declare dso_local i32 @keep_log(%struct.mirror_set*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
