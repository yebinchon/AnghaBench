; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c___set_clone_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c___set_clone_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"read-write\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@__const.__set_clone_mode.descs = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: Switching to %s mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone*, i32)* @__set_clone_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_clone_mode(%struct.clone* %0, i32 %1) #0 {
  %3 = alloca %struct.clone*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8*], align 16
  %6 = alloca i32, align 4
  store %struct.clone* %0, %struct.clone** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [3 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([3 x i8*]* @__const.__set_clone_mode.descs to i8*), i64 24, i1 false)
  %8 = load %struct.clone*, %struct.clone** %3, align 8
  %9 = call i32 @get_clone_mode(%struct.clone* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 130
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 130, i32* %4, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %25 [
    i32 130, label %15
    i32 129, label %15
    i32 128, label %20
  ]

15:                                               ; preds = %13, %13
  %16 = load %struct.clone*, %struct.clone** %3, align 8
  %17 = getelementptr inbounds %struct.clone, %struct.clone* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dm_clone_metadata_set_read_only(i32 %18)
  br label %25

20:                                               ; preds = %13
  %21 = load %struct.clone*, %struct.clone** %3, align 8
  %22 = getelementptr inbounds %struct.clone, %struct.clone* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dm_clone_metadata_set_read_write(i32 %23)
  br label %25

25:                                               ; preds = %13, %20, %15
  %26 = load %struct.clone*, %struct.clone** %3, align 8
  %27 = getelementptr inbounds %struct.clone, %struct.clone* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @WRITE_ONCE(i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %25
  %35 = load %struct.clone*, %struct.clone** %3, align 8
  %36 = getelementptr inbounds %struct.clone, %struct.clone* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dm_table_event(i32 %39)
  %41 = load %struct.clone*, %struct.clone** %3, align 8
  %42 = call i32 @clone_device_name(%struct.clone* %41)
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @DMINFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %42, i8* %46)
  br label %48

48:                                               ; preds = %34, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_clone_mode(%struct.clone*) #2

declare dso_local i32 @dm_clone_metadata_set_read_only(i32) #2

declare dso_local i32 @dm_clone_metadata_set_read_write(i32) #2

declare dso_local i32 @WRITE_ONCE(i32, i32) #2

declare dso_local i32 @dm_table_event(i32) #2

declare dso_local i32 @DMINFO(i8*, i32, i8*) #2

declare dso_local i32 @clone_device_name(%struct.clone*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
