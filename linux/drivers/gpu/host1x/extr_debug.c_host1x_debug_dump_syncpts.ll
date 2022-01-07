; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_debug.c_host1x_debug_dump_syncpts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_debug.c_host1x_debug_dump_syncpts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32 }
%struct.output = type { i32 }

@write_to_printk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_debug_dump_syncpts(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x*, align 8
  %3 = alloca %struct.output, align 4
  store %struct.host1x* %0, %struct.host1x** %2, align 8
  %4 = getelementptr inbounds %struct.output, %struct.output* %3, i32 0, i32 0
  %5 = load i32, i32* @write_to_printk, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.host1x*, %struct.host1x** %2, align 8
  %7 = call i32 @show_syncpts(%struct.host1x* %6, %struct.output* %3)
  ret void
}

declare dso_local i32 @show_syncpts(%struct.host1x*, %struct.output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
