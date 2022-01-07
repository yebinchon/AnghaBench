; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_encap.c_opa_vnic_alloc_mac_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_encap.c_opa_vnic_alloc_mac_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }

@OPA_VNIC_MAC_TBL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* ()* @opa_vnic_alloc_mac_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @opa_vnic_alloc_mac_tbl() #0 {
  %1 = alloca %struct.hlist_head*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.hlist_head*, align 8
  %4 = load i32, i32* @OPA_VNIC_MAC_TBL_SIZE, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 4, %5
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hlist_head* @kzalloc(i32 %8, i32 %9)
  store %struct.hlist_head* %10, %struct.hlist_head** %3, align 8
  %11 = load %struct.hlist_head*, %struct.hlist_head** %3, align 8
  %12 = icmp ne %struct.hlist_head* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.hlist_head* @ERR_PTR(i32 %15)
  store %struct.hlist_head* %16, %struct.hlist_head** %1, align 8
  br label %21

17:                                               ; preds = %0
  %18 = load %struct.hlist_head*, %struct.hlist_head** %3, align 8
  %19 = call i32 @vnic_hash_init(%struct.hlist_head* %18)
  %20 = load %struct.hlist_head*, %struct.hlist_head** %3, align 8
  store %struct.hlist_head* %20, %struct.hlist_head** %1, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.hlist_head*, %struct.hlist_head** %1, align 8
  ret %struct.hlist_head* %22
}

declare dso_local %struct.hlist_head* @kzalloc(i32, i32) #1

declare dso_local %struct.hlist_head* @ERR_PTR(i32) #1

declare dso_local i32 @vnic_hash_init(%struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
