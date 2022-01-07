; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_rw_gpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_rw_gpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.kvmgt_guest_info = type { %struct.kvm* }
%struct.kvm = type { i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*, i64, i32)* @kvmgt_rw_gpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmgt_rw_gpa(i64 %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvmgt_guest_info*, align 8
  %13 = alloca %struct.kvm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %16, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @handle_valid(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ESRCH, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %87

28:                                               ; preds = %5
  %29 = load i64, i64* %7, align 8
  %30 = inttoptr i64 %29 to %struct.kvmgt_guest_info*
  store %struct.kvmgt_guest_info* %30, %struct.kvmgt_guest_info** %12, align 8
  %31 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %12, align 8
  %32 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %31, i32 0, i32 0
  %33 = load %struct.kvm*, %struct.kvm** %32, align 8
  store %struct.kvm* %33, %struct.kvm** %13, align 8
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %28
  %37 = load %struct.kvm*, %struct.kvm** %13, align 8
  %38 = getelementptr inbounds %struct.kvm, %struct.kvm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mmget_not_zero(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %87

45:                                               ; preds = %36
  %46 = load %struct.kvm*, %struct.kvm** %13, align 8
  %47 = getelementptr inbounds %struct.kvm, %struct.kvm* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @use_mm(i32 %48)
  br label %50

50:                                               ; preds = %45, %28
  %51 = load %struct.kvm*, %struct.kvm** %13, align 8
  %52 = getelementptr inbounds %struct.kvm, %struct.kvm* %51, i32 0, i32 1
  %53 = call i32 @srcu_read_lock(i32* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.kvm*, %struct.kvm** %13, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @kvm_write_guest(%struct.kvm* %57, i64 %58, i8* %59, i64 %60)
  br label %68

62:                                               ; preds = %50
  %63 = load %struct.kvm*, %struct.kvm** %13, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @kvm_read_guest(%struct.kvm* %63, i64 %64, i8* %65, i64 %66)
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i32 [ %61, %56 ], [ %67, %62 ]
  store i32 %69, i32* %15, align 4
  %70 = load %struct.kvm*, %struct.kvm** %13, align 8
  %71 = getelementptr inbounds %struct.kvm, %struct.kvm* %70, i32 0, i32 1
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @srcu_read_unlock(i32* %71, i32 %72)
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load %struct.kvm*, %struct.kvm** %13, align 8
  %78 = getelementptr inbounds %struct.kvm, %struct.kvm* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @unuse_mm(i32 %79)
  %81 = load %struct.kvm*, %struct.kvm** %13, align 8
  %82 = getelementptr inbounds %struct.kvm, %struct.kvm* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mmput(i32 %83)
  br label %85

85:                                               ; preds = %76, %68
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %42, %25
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @handle_valid(i64) #1

declare dso_local i32 @mmget_not_zero(i32) #1

declare dso_local i32 @use_mm(i32) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @kvm_write_guest(%struct.kvm*, i64, i8*, i64) #1

declare dso_local i32 @kvm_read_guest(%struct.kvm*, i64, i8*, i64) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @unuse_mm(i32) #1

declare dso_local i32 @mmput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
