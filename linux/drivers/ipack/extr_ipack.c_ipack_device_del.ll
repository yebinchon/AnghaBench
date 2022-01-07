; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_device_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_device_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipack_device_del(%struct.ipack_device* %0) #0 {
  %2 = alloca %struct.ipack_device*, align 8
  store %struct.ipack_device* %0, %struct.ipack_device** %2, align 8
  %3 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %4 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %3, i32 0, i32 0
  %5 = call i32 @device_del(i32* %4)
  %6 = load %struct.ipack_device*, %struct.ipack_device** %2, align 8
  %7 = call i32 @ipack_put_device(%struct.ipack_device* %6)
  ret void
}

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @ipack_put_device(%struct.ipack_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
