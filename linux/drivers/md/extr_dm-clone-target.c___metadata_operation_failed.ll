; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c___metadata_operation_failed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c___metadata_operation_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s: Metadata operation `%s' failed: error = %d\00", align 1
@CM_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone*, i8*, i32)* @__metadata_operation_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__metadata_operation_failed(%struct.clone* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.clone*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.clone* %0, %struct.clone** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.clone*, %struct.clone** %4, align 8
  %8 = call i32 @clone_device_name(%struct.clone* %7)
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @DMERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %9, i32 %10)
  %12 = load %struct.clone*, %struct.clone** %4, align 8
  %13 = call i32 @__abort_transaction(%struct.clone* %12)
  %14 = load %struct.clone*, %struct.clone** %4, align 8
  %15 = load i32, i32* @CM_READ_ONLY, align 4
  %16 = call i32 @__set_clone_mode(%struct.clone* %14, i32 %15)
  %17 = load %struct.clone*, %struct.clone** %4, align 8
  %18 = call i32 @__reload_in_core_bitset(%struct.clone* %17)
  ret void
}

declare dso_local i32 @DMERR(i8*, i32, i8*, i32) #1

declare dso_local i32 @clone_device_name(%struct.clone*) #1

declare dso_local i32 @__abort_transaction(%struct.clone*) #1

declare dso_local i32 @__set_clone_mode(%struct.clone*, i32) #1

declare dso_local i32 @__reload_in_core_bitset(%struct.clone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
