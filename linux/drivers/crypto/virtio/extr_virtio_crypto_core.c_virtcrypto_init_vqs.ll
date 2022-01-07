; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_init_vqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_init_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_crypto = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_crypto*)* @virtcrypto_init_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtcrypto_init_vqs(%struct.virtio_crypto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_crypto*, align 8
  %4 = alloca i32, align 4
  store %struct.virtio_crypto* %0, %struct.virtio_crypto** %3, align 8
  %5 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %6 = call i32 @virtcrypto_alloc_queues(%struct.virtio_crypto* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %12 = call i32 @virtcrypto_find_vqs(%struct.virtio_crypto* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %21

16:                                               ; preds = %10
  %17 = call i32 (...) @get_online_cpus()
  %18 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %19 = call i32 @virtcrypto_set_affinity(%struct.virtio_crypto* %18)
  %20 = call i32 (...) @put_online_cpus()
  store i32 0, i32* %2, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %23 = call i32 @virtcrypto_free_queues(%struct.virtio_crypto* %22)
  br label %24

24:                                               ; preds = %21, %9
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @virtcrypto_alloc_queues(%struct.virtio_crypto*) #1

declare dso_local i32 @virtcrypto_find_vqs(%struct.virtio_crypto*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @virtcrypto_set_affinity(%struct.virtio_crypto*) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i32 @virtcrypto_free_queues(%struct.virtio_crypto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
