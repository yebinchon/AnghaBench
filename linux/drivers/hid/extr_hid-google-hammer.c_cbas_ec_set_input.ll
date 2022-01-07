; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-google-hammer.c_cbas_ec_set_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-google-hammer.c_cbas_ec_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@cbas_ec_lock = common dso_local global i32 0, align 4
@cbas_ec = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @cbas_ec_set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbas_ec_set_input(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %3 = call i32 @spin_lock_irq(i32* @cbas_ec_lock)
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  store %struct.input_dev* %4, %struct.input_dev** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cbas_ec, i32 0, i32 0), align 8
  %5 = call i32 @spin_unlock_irq(i32* @cbas_ec_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
