; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c___abort_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c___abort_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i32 }

@CM_READ_ONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"%s: Aborting current metadata transaction\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: Failed to abort metadata transaction\00", align 1
@CM_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone*)* @__abort_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__abort_transaction(%struct.clone* %0) #0 {
  %2 = alloca %struct.clone*, align 8
  %3 = alloca i8*, align 8
  store %struct.clone* %0, %struct.clone** %2, align 8
  %4 = load %struct.clone*, %struct.clone** %2, align 8
  %5 = call i8* @clone_device_name(%struct.clone* %4)
  store i8* %5, i8** %3, align 8
  %6 = load %struct.clone*, %struct.clone** %2, align 8
  %7 = call i64 @get_clone_mode(%struct.clone* %6)
  %8 = load i64, i64* @CM_READ_ONLY, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %25

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @DMERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.clone*, %struct.clone** %2, align 8
  %15 = getelementptr inbounds %struct.clone, %struct.clone* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @dm_clone_metadata_abort(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @DMERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load %struct.clone*, %struct.clone** %2, align 8
  %23 = load i32, i32* @CM_FAIL, align 4
  %24 = call i32 @__set_clone_mode(%struct.clone* %22, i32 %23)
  br label %25

25:                                               ; preds = %10, %19, %11
  ret void
}

declare dso_local i8* @clone_device_name(%struct.clone*) #1

declare dso_local i64 @get_clone_mode(%struct.clone*) #1

declare dso_local i32 @DMERR(i8*, i8*) #1

declare dso_local i64 @dm_clone_metadata_abort(i32) #1

declare dso_local i32 @__set_clone_mode(%struct.clone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
