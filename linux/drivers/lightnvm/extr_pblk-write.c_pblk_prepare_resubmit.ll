; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_prepare_resubmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_prepare_resubmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.pblk_rb }
%struct.pblk_rb = type { %struct.pblk_rb_entry* }
%struct.pblk_rb_entry = type { i32, %struct.pblk_w_ctx }
%struct.pblk_w_ctx = type { i64, i32, i32 }
%struct.pblk_line = type { i32, i32 }
%struct.ppa_addr = type { i32 }

@ADDR_EMPTY = common dso_local global i64 0, align 8
@PBLK_WRITTEN_DATA = common dso_local global i32 0, align 4
@pblk_line_put = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, i32, i32)* @pblk_prepare_resubmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_prepare_resubmit(%struct.pblk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pblk_rb*, align 8
  %8 = alloca %struct.pblk_rb_entry*, align 8
  %9 = alloca %struct.pblk_line*, align 8
  %10 = alloca %struct.pblk_w_ctx*, align 8
  %11 = alloca %struct.ppa_addr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.pblk*, %struct.pblk** %4, align 8
  %16 = getelementptr inbounds %struct.pblk, %struct.pblk* %15, i32 0, i32 1
  store %struct.pblk_rb* %16, %struct.pblk_rb** %7, align 8
  %17 = load %struct.pblk*, %struct.pblk** %4, align 8
  %18 = getelementptr inbounds %struct.pblk, %struct.pblk* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %85, %3
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %88

24:                                               ; preds = %20
  %25 = load %struct.pblk_rb*, %struct.pblk_rb** %7, align 8
  %26 = getelementptr inbounds %struct.pblk_rb, %struct.pblk_rb* %25, i32 0, i32 0
  %27 = load %struct.pblk_rb_entry*, %struct.pblk_rb_entry** %26, align 8
  %28 = load %struct.pblk_rb*, %struct.pblk_rb** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i64 @pblk_rb_ptr_wrap(%struct.pblk_rb* %28, i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.pblk_rb_entry, %struct.pblk_rb_entry* %27, i64 %31
  store %struct.pblk_rb_entry* %32, %struct.pblk_rb_entry** %8, align 8
  %33 = load %struct.pblk_rb_entry*, %struct.pblk_rb_entry** %8, align 8
  %34 = getelementptr inbounds %struct.pblk_rb_entry, %struct.pblk_rb_entry* %33, i32 0, i32 1
  store %struct.pblk_w_ctx* %34, %struct.pblk_w_ctx** %10, align 8
  %35 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %10, align 8
  %36 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ADDR_EMPTY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %24
  %41 = load %struct.pblk*, %struct.pblk** %4, align 8
  %42 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %10, align 8
  %43 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @pblk_trans_map_get(%struct.pblk* %41, i64 %44)
  %46 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %14, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = bitcast %struct.ppa_addr* %11 to i8*
  %48 = bitcast %struct.ppa_addr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load %struct.pblk_rb_entry*, %struct.pblk_rb_entry** %8, align 8
  %50 = getelementptr inbounds %struct.pblk_rb_entry, %struct.pblk_rb_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pblk_ppa_comp(i32 %53, i32 %51)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %40
  %57 = load i64, i64* @ADDR_EMPTY, align 8
  %58 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %40
  br label %61

61:                                               ; preds = %60, %24
  %62 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %10, align 8
  %63 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @READ_ONCE(i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* @PBLK_WRITTEN_DATA, align 4
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %12, align 4
  %69 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %10, align 8
  %70 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %69, i32 0, i32 2
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @smp_store_release(i32* %70, i32 %71)
  %73 = load %struct.pblk*, %struct.pblk** %4, align 8
  %74 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %10, align 8
  %75 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk* %73, i32 %76)
  store %struct.pblk_line* %77, %struct.pblk_line** %9, align 8
  %78 = load %struct.pblk_line*, %struct.pblk_line** %9, align 8
  %79 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %78, i32 0, i32 1
  %80 = call i32 @atomic_dec(i32* %79)
  %81 = load %struct.pblk_line*, %struct.pblk_line** %9, align 8
  %82 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %81, i32 0, i32 0
  %83 = load i32, i32* @pblk_line_put, align 4
  %84 = call i32 @kref_put(i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %61
  %86 = load i32, i32* %13, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %20

88:                                               ; preds = %20
  %89 = load %struct.pblk*, %struct.pblk** %4, align 8
  %90 = getelementptr inbounds %struct.pblk, %struct.pblk* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock(i32* %90)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @pblk_rb_ptr_wrap(%struct.pblk_rb*, i32, i32) #1

declare dso_local i32 @pblk_trans_map_get(%struct.pblk*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_ppa_comp(i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

declare dso_local %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
