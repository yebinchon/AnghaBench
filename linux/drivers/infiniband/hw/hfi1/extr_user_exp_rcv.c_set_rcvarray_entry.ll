; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_set_rcvarray_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_set_rcvarray_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { i32, i32, %struct.hfi1_ctxtdata* }
%struct.hfi1_ctxtdata = type { i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.tid_user_buf = type { i64, %struct.page** }
%struct.page = type { i32 }
%struct.tid_group = type { i32 }
%struct.tid_rb_node = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, %struct.tid_group*, i32 }
%struct.TYPE_5__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to DMA map Exp Rcv pages 0x%llx\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@TID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to insert RB node %u 0x%lx, 0x%lx %d\00", align 1
@PT_EXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_filedata*, %struct.tid_user_buf*, i32, %struct.tid_group*, i32, i32)* @set_rcvarray_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rcvarray_entry(%struct.hfi1_filedata* %0, %struct.tid_user_buf* %1, i32 %2, %struct.tid_group* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi1_filedata*, align 8
  %9 = alloca %struct.tid_user_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tid_group*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hfi1_ctxtdata*, align 8
  %16 = alloca %struct.tid_rb_node*, align 8
  %17 = alloca %struct.hfi1_devdata*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.page**, align 8
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %8, align 8
  store %struct.tid_user_buf* %1, %struct.tid_user_buf** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.tid_group* %3, %struct.tid_group** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %8, align 8
  %21 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %20, i32 0, i32 2
  %22 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %21, align 8
  store %struct.hfi1_ctxtdata* %22, %struct.hfi1_ctxtdata** %15, align 8
  %23 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %15, align 8
  %24 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %23, i32 0, i32 1
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %24, align 8
  store %struct.hfi1_devdata* %25, %struct.hfi1_devdata** %17, align 8
  %26 = load %struct.tid_user_buf*, %struct.tid_user_buf** %9, align 8
  %27 = getelementptr inbounds %struct.tid_user_buf, %struct.tid_user_buf* %26, i32 0, i32 1
  %28 = load %struct.page**, %struct.page*** %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.page*, %struct.page** %28, i64 %30
  store %struct.page** %31, %struct.page*** %19, align 8
  %32 = load i32, i32* %13, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = add i64 56, %34
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.tid_rb_node* @kzalloc(i32 %36, i32 %37)
  store %struct.tid_rb_node* %38, %struct.tid_rb_node** %16, align 8
  %39 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %40 = icmp ne %struct.tid_rb_node* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %6
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %192

44:                                               ; preds = %6
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %46 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.page**, %struct.page*** %19, align 8
  %49 = getelementptr inbounds %struct.page*, %struct.page** %48, i64 0
  %50 = load %struct.page*, %struct.page** %49, align 8
  %51 = call i32 @page_to_phys(%struct.page* %50)
  %52 = call i32 @__va(i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = mul i32 %53, %54
  %56 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %57 = call i32 @pci_map_single(%struct.TYPE_6__* %47, i32 %52, i32 %55, i32 %56)
  store i32 %57, i32* %18, align 4
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %59 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %18, align 4
  %63 = call i64 @dma_mapping_error(i32* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %44
  %66 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %67 = load i32, i32* %18, align 4
  %68 = call i32 @dd_dev_err(%struct.hfi1_devdata* %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %70 = call i32 @kfree(%struct.tid_rb_node* %69)
  %71 = load i32, i32* @EFAULT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %192

73:                                               ; preds = %44
  %74 = load %struct.tid_user_buf*, %struct.tid_user_buf** %9, align 8
  %75 = getelementptr inbounds %struct.tid_user_buf, %struct.tid_user_buf* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = mul i32 %77, %78
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %76, %80
  %82 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %83 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i64 %81, i64* %84, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = mul i32 %85, %86
  %88 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %89 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.page**, %struct.page*** %19, align 8
  %92 = getelementptr inbounds %struct.page*, %struct.page** %91, i64 0
  %93 = load %struct.page*, %struct.page** %92, align 8
  %94 = call i32 @page_to_phys(%struct.page* %93)
  %95 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %96 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %99 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %102 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %18, align 4
  %104 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %105 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 8
  %106 = load %struct.tid_group*, %struct.tid_group** %11, align 8
  %107 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %108 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %107, i32 0, i32 6
  store %struct.tid_group* %106, %struct.tid_group** %108, align 8
  %109 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %110 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %112 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.page**, %struct.page*** %19, align 8
  %115 = load i32, i32* %13, align 4
  %116 = zext i32 %115 to i64
  %117 = mul i64 8, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 @memcpy(i32 %113, %struct.page** %114, i32 %118)
  %120 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %8, align 8
  %121 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %73
  %125 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %8, align 8
  %126 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %127 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %126, i32 0, i32 3
  %128 = call i32 @tid_rb_insert(%struct.hfi1_filedata* %125, %struct.TYPE_5__* %127)
  store i32 %128, i32* %14, align 4
  br label %136

129:                                              ; preds = %73
  %130 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %8, align 8
  %131 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %134 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %133, i32 0, i32 3
  %135 = call i32 @hfi1_mmu_rb_insert(i32 %132, %struct.TYPE_5__* %134)
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %129, %124
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %136
  %140 = load i32, i32* @TID, align 4
  %141 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %142 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %145 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %149 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @hfi1_cdbg(i32 %140, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %143, i64 %147, i32 %150, i32 %151)
  %153 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %154 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @PAGE_SIZE, align 4
  %159 = mul i32 %157, %158
  %160 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %161 = call i32 @pci_unmap_single(%struct.TYPE_6__* %155, i32 %156, i32 %159, i32 %160)
  %162 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %163 = call i32 @kfree(%struct.tid_rb_node* %162)
  %164 = load i32, i32* @EFAULT, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %7, align 4
  br label %192

166:                                              ; preds = %136
  %167 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @PT_EXPECTED, align 4
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %13, align 4
  %172 = call i64 @ilog2(i32 %171)
  %173 = add nsw i64 %172, 1
  %174 = call i32 @hfi1_put_tid(%struct.hfi1_devdata* %167, i32 %168, i32 %169, i32 %170, i64 %173)
  %175 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %15, align 8
  %176 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %8, align 8
  %179 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %184 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.tid_rb_node*, %struct.tid_rb_node** %16, align 8
  %188 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %18, align 4
  %191 = call i32 @trace_hfi1_exp_tid_reg(i32 %177, i32 %180, i32 %181, i32 %182, i64 %186, i32 %189, i32 %190)
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %166, %139, %65, %41
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local %struct.tid_rb_node* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_map_single(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @__va(i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.tid_rb_node*) #1

declare dso_local i32 @memcpy(i32, %struct.page**, i32) #1

declare dso_local i32 @tid_rb_insert(%struct.hfi1_filedata*, %struct.TYPE_5__*) #1

declare dso_local i32 @hfi1_mmu_rb_insert(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @hfi1_cdbg(i32, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @hfi1_put_tid(%struct.hfi1_devdata*, i32, i32, i32, i64) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @trace_hfi1_exp_tid_reg(i32, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
