; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_chunk_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_chunk_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_reqctx_s = type { %struct.brcm_message }
%struct.brcm_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iproc_reqctx_s*)* @spu_chunk_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_chunk_cleanup(%struct.iproc_reqctx_s* %0) #0 {
  %2 = alloca %struct.iproc_reqctx_s*, align 8
  %3 = alloca %struct.brcm_message*, align 8
  store %struct.iproc_reqctx_s* %0, %struct.iproc_reqctx_s** %2, align 8
  %4 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %2, align 8
  %5 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %4, i32 0, i32 0
  store %struct.brcm_message* %5, %struct.brcm_message** %3, align 8
  %6 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %7 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kfree(i32 %9)
  %11 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %12 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kfree(i32 %14)
  %16 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %17 = call i32 @memset(%struct.brcm_message* %16, i32 0, i32 8)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @memset(%struct.brcm_message*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
