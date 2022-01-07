; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_free_hash_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_free_hash_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_free_hash_desc(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %3 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %4 = icmp ne %struct.shash_desc* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %7 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @crypto_free_shash(i32 %8)
  %10 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %11 = call i32 @kfree(%struct.shash_desc* %10)
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @crypto_free_shash(i32) #1

declare dso_local i32 @kfree(%struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
