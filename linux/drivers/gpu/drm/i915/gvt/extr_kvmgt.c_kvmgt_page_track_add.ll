; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_page_track_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_page_track_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmgt_guest_info = type { %struct.kvm* }
%struct.kvm = type { i32, i32 }
%struct.kvm_memory_slot = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KVM_PAGE_TRACK_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @kvmgt_page_track_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmgt_page_track_add(i64 %0, i32 %1) #0 {
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
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ESRCH, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = inttoptr i64 %17 to %struct.kvmgt_guest_info*
  store %struct.kvmgt_guest_info* %18, %struct.kvmgt_guest_info** %6, align 8
  %19 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %6, align 8
  %20 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %19, i32 0, i32 0
  %21 = load %struct.kvm*, %struct.kvm** %20, align 8
  store %struct.kvm* %21, %struct.kvm** %7, align 8
  %22 = load %struct.kvm*, %struct.kvm** %7, align 8
  %23 = getelementptr inbounds %struct.kvm, %struct.kvm* %22, i32 0, i32 0
  %24 = call i32 @srcu_read_lock(i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.kvm*, %struct.kvm** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm* %25, i32 %26)
  store %struct.kvm_memory_slot* %27, %struct.kvm_memory_slot** %8, align 8
  %28 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %29 = icmp ne %struct.kvm_memory_slot* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %16
  %31 = load %struct.kvm*, %struct.kvm** %7, align 8
  %32 = getelementptr inbounds %struct.kvm, %struct.kvm* %31, i32 0, i32 0
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @srcu_read_unlock(i32* %32, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %63

37:                                               ; preds = %16
  %38 = load %struct.kvm*, %struct.kvm** %7, align 8
  %39 = getelementptr inbounds %struct.kvm, %struct.kvm* %38, i32 0, i32 1
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @kvmgt_gfn_is_write_protected(%struct.kvmgt_guest_info* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %55

46:                                               ; preds = %37
  %47 = load %struct.kvm*, %struct.kvm** %7, align 8
  %48 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @KVM_PAGE_TRACK_WRITE, align 4
  %51 = call i32 @kvm_slot_page_track_add_page(%struct.kvm* %47, %struct.kvm_memory_slot* %48, i32 %49, i32 %50)
  %52 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @kvmgt_protect_table_add(%struct.kvmgt_guest_info* %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %45
  %56 = load %struct.kvm*, %struct.kvm** %7, align 8
  %57 = getelementptr inbounds %struct.kvm, %struct.kvm* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.kvm*, %struct.kvm** %7, align 8
  %60 = getelementptr inbounds %struct.kvm, %struct.kvm* %59, i32 0, i32 0
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @srcu_read_unlock(i32* %60, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %30, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @handle_valid(i64) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm*, i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @kvmgt_gfn_is_write_protected(%struct.kvmgt_guest_info*, i32) #1

declare dso_local i32 @kvm_slot_page_track_add_page(%struct.kvm*, %struct.kvm_memory_slot*, i32, i32) #1

declare dso_local i32 @kvmgt_protect_table_add(%struct.kvmgt_guest_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
