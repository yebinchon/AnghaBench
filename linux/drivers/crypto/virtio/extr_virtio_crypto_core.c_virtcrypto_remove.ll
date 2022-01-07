; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_2__*, i32, %struct.virtio_crypto* }
%struct.TYPE_2__ = type { i32 (%struct.virtio_device*)* }
%struct.virtio_crypto = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Start virtcrypto_remove.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @virtcrypto_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtcrypto_remove(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtio_crypto*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %4 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %4, i32 0, i32 2
  %6 = load %struct.virtio_crypto*, %struct.virtio_crypto** %5, align 8
  store %struct.virtio_crypto* %6, %struct.virtio_crypto** %3, align 8
  %7 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %8 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %7, i32 0, i32 1
  %9 = call i32 @dev_info(i32* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %11 = call i64 @virtcrypto_dev_started(%struct.virtio_crypto* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %15 = call i32 @virtcrypto_dev_stop(%struct.virtio_crypto* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %18 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %20, align 8
  %22 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %23 = call i32 %21(%struct.virtio_device* %22)
  %24 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %25 = call i32 @virtcrypto_free_unused_reqs(%struct.virtio_crypto* %24)
  %26 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %27 = call i32 @virtcrypto_clear_crypto_engines(%struct.virtio_crypto* %26)
  %28 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %29 = call i32 @virtcrypto_del_vqs(%struct.virtio_crypto* %28)
  %30 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %31 = call i32 @virtcrypto_devmgr_rm_dev(%struct.virtio_crypto* %30)
  %32 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %33 = call i32 @kfree(%struct.virtio_crypto* %32)
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @virtcrypto_dev_started(%struct.virtio_crypto*) #1

declare dso_local i32 @virtcrypto_dev_stop(%struct.virtio_crypto*) #1

declare dso_local i32 @virtcrypto_free_unused_reqs(%struct.virtio_crypto*) #1

declare dso_local i32 @virtcrypto_clear_crypto_engines(%struct.virtio_crypto*) #1

declare dso_local i32 @virtcrypto_del_vqs(%struct.virtio_crypto*) #1

declare dso_local i32 @virtcrypto_devmgr_rm_dev(%struct.virtio_crypto*) #1

declare dso_local i32 @kfree(%struct.virtio_crypto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
