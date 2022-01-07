; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_input_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_input_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.steam_device = type { i32 }
%struct.input_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.steam_device*)* @steam_input_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @steam_input_unregister(%struct.steam_device* %0) #0 {
  %2 = alloca %struct.steam_device*, align 8
  %3 = alloca %struct.input_dev*, align 8
  store %struct.steam_device* %0, %struct.steam_device** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %6 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.input_dev* @rcu_dereference(i32 %7)
  store %struct.input_dev* %8, %struct.input_dev** %3, align 8
  %9 = call i32 (...) @rcu_read_unlock()
  %10 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %11 = icmp ne %struct.input_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.steam_device*, %struct.steam_device** %2, align 8
  %15 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RCU_INIT_POINTER(i32 %16, i32* null)
  %18 = call i32 (...) @synchronize_rcu()
  %19 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %20 = call i32 @input_unregister_device(%struct.input_dev* %19)
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.input_dev* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
