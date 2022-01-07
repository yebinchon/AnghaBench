; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_putbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_putbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32, i32 }
%struct.smscore_buffer_t = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smscore_putbuffer(%struct.smscore_device_t* %0, %struct.smscore_buffer_t* %1) #0 {
  %3 = alloca %struct.smscore_device_t*, align 8
  %4 = alloca %struct.smscore_buffer_t*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %3, align 8
  store %struct.smscore_buffer_t* %1, %struct.smscore_buffer_t** %4, align 8
  %5 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %6 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %5, i32 0, i32 2
  %7 = call i32 @wake_up_interruptible(i32* %6)
  %8 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %9 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %8, i32 0, i32 0
  %10 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %11 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %10, i32 0, i32 1
  %12 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %13 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %12, i32 0, i32 0
  %14 = call i32 @list_add_locked(i32* %9, i32* %11, i32* %13)
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @list_add_locked(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
