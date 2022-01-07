; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_page_track_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_page_track_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmgt_guest_info = type { %struct.kvm* }
%struct.kvm = type { i32, i32 }
%struct.kvm_memory_slot = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KVM_PAGE_TRACK_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @kvmgt_page_track_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmgt_page_track_remove(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmgt_guest_info*, align 8
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca %struct.kvm_memory_slot*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @handle_valid(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = inttoptr i64 %15 to %struct.kvmgt_guest_info*
  store %struct.kvmgt_guest_info* %16, %struct.kvmgt_guest_info** %6, align 8
  %17 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %6, align 8
  %18 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %17, i32 0, i32 0
  %19 = load %struct.kvm*, %struct.kvm** %18, align 8
  store %struct.kvm* %19, %struct.kvm** %7, align 8
  %20 = load %struct.kvm*, %struct.kvm** %7, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 0
  %22 = call i32 @srcu_read_lock(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.kvm*, %struct.kvm** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm* %23, i32 %24)
  store %struct.kvm_memory_slot* %25, %struct.kvm_memory_slot** %8, align 8
  %26 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %27 = icmp ne %struct.kvm_memory_slot* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %14
  %29 = load %struct.kvm*, %struct.kvm** %7, align 8
  %30 = getelementptr inbounds %struct.kvm, %struct.kvm* %29, i32 0, i32 0
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @srcu_read_unlock(i32* %30, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %61

35:                                               ; preds = %14
  %36 = load %struct.kvm*, %struct.kvm** %7, align 8
  %37 = getelementptr inbounds %struct.kvm, %struct.kvm* %36, i32 0, i32 1
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @kvmgt_gfn_is_write_protected(%struct.kvmgt_guest_info* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %53

44:                                               ; preds = %35
  %45 = load %struct.kvm*, %struct.kvm** %7, align 8
  %46 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @KVM_PAGE_TRACK_WRITE, align 4
  %49 = call i32 @kvm_slot_page_track_remove_page(%struct.kvm* %45, %struct.kvm_memory_slot* %46, i32 %47, i32 %48)
  %50 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @kvmgt_protect_table_del(%struct.kvmgt_guest_info* %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %43
  %54 = load %struct.kvm*, %struct.kvm** %7, align 8
  %55 = getelementptr inbounds %struct.kvm, %struct.kvm* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.kvm*, %struct.kvm** %7, align 8
  %58 = getelementptr inbounds %struct.kvm, %struct.kvm* %57, i32 0, i32 0
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @srcu_read_unlock(i32* %58, i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %28, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @handle_valid(i64) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm*, i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kvmgt_gfn_is_write_protected(%struct.kvmgt_guest_info*, i32) #1

declare dso_local i32 @kvm_slot_page_track_remove_page(%struct.kvm*, %struct.kvm_memory_slot*, i32, i32) #1

declare dso_local i32 @kvmgt_protect_table_del(%struct.kvmgt_guest_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
