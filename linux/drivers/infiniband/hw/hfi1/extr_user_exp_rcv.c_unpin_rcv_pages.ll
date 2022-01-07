; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_unpin_rcv_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_unpin_rcv_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }
%struct.tid_user_buf = type { %struct.page** }
%struct.page = type { i32 }
%struct.tid_rb_node = type { %struct.page**, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_filedata*, %struct.tid_user_buf*, %struct.tid_rb_node*, i32, i32, i32)* @unpin_rcv_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpin_rcv_pages(%struct.hfi1_filedata* %0, %struct.tid_user_buf* %1, %struct.tid_rb_node* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hfi1_filedata*, align 8
  %8 = alloca %struct.tid_user_buf*, align 8
  %9 = alloca %struct.tid_rb_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page**, align 8
  %14 = alloca %struct.hfi1_devdata*, align 8
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %7, align 8
  store %struct.tid_user_buf* %1, %struct.tid_user_buf** %8, align 8
  store %struct.tid_rb_node* %2, %struct.tid_rb_node** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %7, align 8
  %16 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %18, align 8
  store %struct.hfi1_devdata* %19, %struct.hfi1_devdata** %14, align 8
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %6
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %14, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tid_rb_node*, %struct.tid_rb_node** %9, align 8
  %27 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tid_rb_node*, %struct.tid_rb_node** %9, align 8
  %30 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %34 = call i32 @pci_unmap_single(i32 %25, i32 %28, i32 %32, i32 %33)
  %35 = load %struct.tid_rb_node*, %struct.tid_rb_node** %9, align 8
  %36 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %35, i32 0, i32 0
  %37 = load %struct.page**, %struct.page*** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.page*, %struct.page** %37, i64 %39
  store %struct.page** %40, %struct.page*** %13, align 8
  br label %48

41:                                               ; preds = %6
  %42 = load %struct.tid_user_buf*, %struct.tid_user_buf** %8, align 8
  %43 = getelementptr inbounds %struct.tid_user_buf, %struct.tid_user_buf* %42, i32 0, i32 0
  %44 = load %struct.page**, %struct.page*** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.page*, %struct.page** %44, i64 %46
  store %struct.page** %47, %struct.page*** %13, align 8
  br label %48

48:                                               ; preds = %41, %22
  %49 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %7, align 8
  %50 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.page**, %struct.page*** %13, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @hfi1_release_user_pages(i32 %51, %struct.page** %52, i32 %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %7, align 8
  %58 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub i32 %59, %56
  store i32 %60, i32* %58, align 8
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @hfi1_release_user_pages(i32, %struct.page**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
