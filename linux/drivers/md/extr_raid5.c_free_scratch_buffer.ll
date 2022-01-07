; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_free_scratch_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_free_scratch_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32 }
%struct.raid5_percpu = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.raid5_percpu*)* @free_scratch_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_scratch_buffer(%struct.r5conf* %0, %struct.raid5_percpu* %1) #0 {
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.raid5_percpu*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  store %struct.raid5_percpu* %1, %struct.raid5_percpu** %4, align 8
  %5 = load %struct.raid5_percpu*, %struct.raid5_percpu** %4, align 8
  %6 = getelementptr inbounds %struct.raid5_percpu, %struct.raid5_percpu* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @safe_put_page(i32* %7)
  %9 = load %struct.raid5_percpu*, %struct.raid5_percpu** %4, align 8
  %10 = getelementptr inbounds %struct.raid5_percpu, %struct.raid5_percpu* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.raid5_percpu*, %struct.raid5_percpu** %4, align 8
  %12 = getelementptr inbounds %struct.raid5_percpu, %struct.raid5_percpu* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @kvfree(i32* %13)
  %15 = load %struct.raid5_percpu*, %struct.raid5_percpu** %4, align 8
  %16 = getelementptr inbounds %struct.raid5_percpu, %struct.raid5_percpu* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  ret void
}

declare dso_local i32 @safe_put_page(i32*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
