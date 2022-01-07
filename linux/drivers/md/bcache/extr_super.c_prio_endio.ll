; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_prio_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_prio_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.cache* }
%struct.cache = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"accessing priorities\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @prio_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prio_endio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.cache*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 1
  %6 = load %struct.cache*, %struct.cache** %5, align 8
  store %struct.cache* %6, %struct.cache** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cache*, %struct.cache** %3, align 8
  %11 = getelementptr inbounds %struct.cache, %struct.cache* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cache_set_err_on(i32 %9, i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = load %struct.cache*, %struct.cache** %3, align 8
  %16 = getelementptr inbounds %struct.cache, %struct.cache* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bch_bbio_free(%struct.bio* %14, i32 %17)
  %19 = load %struct.cache*, %struct.cache** %3, align 8
  %20 = getelementptr inbounds %struct.cache, %struct.cache* %19, i32 0, i32 0
  %21 = call i32 @closure_put(i32* %20)
  ret void
}

declare dso_local i32 @cache_set_err_on(i32, i32, i8*) #1

declare dso_local i32 @bch_bbio_free(%struct.bio*, i32) #1

declare dso_local i32 @closure_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
