; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_metadata_operation_failed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_metadata_operation_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s: metadata operation '%s' failed: error = %d\00", align 1
@CM_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, i8*, i32)* @metadata_operation_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @metadata_operation_failed(%struct.cache* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cache*, %struct.cache** %4, align 8
  %8 = call i32 @cache_device_name(%struct.cache* %7)
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %9, i32 %10)
  %12 = load %struct.cache*, %struct.cache** %4, align 8
  %13 = call i32 @abort_transaction(%struct.cache* %12)
  %14 = load %struct.cache*, %struct.cache** %4, align 8
  %15 = load i32, i32* @CM_READ_ONLY, align 4
  %16 = call i32 @set_cache_mode(%struct.cache* %14, i32 %15)
  ret void
}

declare dso_local i32 @DMERR_LIMIT(i8*, i32, i8*, i32) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

declare dso_local i32 @abort_transaction(%struct.cache*) #1

declare dso_local i32 @set_cache_mode(%struct.cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
