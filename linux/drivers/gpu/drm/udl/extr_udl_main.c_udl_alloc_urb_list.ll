; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_main.c_udl_alloc_urb_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_main.c_udl_alloc_urb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.udl_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32 }
%struct.urb = type { i32, i32 }
%struct.urb_node = type { i32, %struct.urb*, i32, %struct.udl_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@udl_release_urb_work = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@udl_urb_completion = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"allocated %d %d byte urbs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i64)* @udl_alloc_urb_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_alloc_urb_list(%struct.drm_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.udl_device*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca %struct.urb_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call %struct.udl_device* @to_udl(%struct.drm_device* %12)
  store %struct.udl_device* %13, %struct.udl_device** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %6, align 8
  %17 = mul i64 %15, %16
  store i64 %17, i64* %11, align 8
  %18 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %19 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  %21 = call i32 @spin_lock_init(i32* %20)
  br label %22

22:                                               ; preds = %93, %3
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %25 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %28 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %32 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = call i32 @sema_init(i32* %33, i32 0)
  %35 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %36 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %39 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %99, %22
  %42 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %43 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = mul i64 %45, %46
  %48 = load i64, i64* %11, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %138

50:                                               ; preds = %41
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.urb_node* @kzalloc(i32 32, i32 %51)
  store %struct.urb_node* %52, %struct.urb_node** %9, align 8
  %53 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %54 = icmp ne %struct.urb_node* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %138

56:                                               ; preds = %50
  %57 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %58 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %59 = getelementptr inbounds %struct.urb_node, %struct.urb_node* %58, i32 0, i32 3
  store %struct.udl_device* %57, %struct.udl_device** %59, align 8
  %60 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %61 = getelementptr inbounds %struct.urb_node, %struct.urb_node* %60, i32 0, i32 2
  %62 = load i32, i32* @udl_release_urb_work, align 4
  %63 = call i32 @INIT_DELAYED_WORK(i32* %61, i32 %62)
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %64)
  store %struct.urb* %65, %struct.urb** %8, align 8
  %66 = load %struct.urb*, %struct.urb** %8, align 8
  %67 = icmp ne %struct.urb* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %70 = call i32 @kfree(%struct.urb_node* %69)
  br label %138

71:                                               ; preds = %56
  %72 = load %struct.urb*, %struct.urb** %8, align 8
  %73 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %74 = getelementptr inbounds %struct.urb_node, %struct.urb_node* %73, i32 0, i32 1
  store %struct.urb* %72, %struct.urb** %74, align 8
  %75 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %76 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = load %struct.urb*, %struct.urb** %8, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 1
  %82 = call i8* @usb_alloc_coherent(i32 %77, i64 %78, i32 %79, i32* %81)
  store i8* %82, i8** %10, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %99, label %85

85:                                               ; preds = %71
  %86 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %87 = call i32 @kfree(%struct.urb_node* %86)
  %88 = load %struct.urb*, %struct.urb** %8, align 8
  %89 = call i32 @usb_free_urb(%struct.urb* %88)
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @PAGE_SIZE, align 8
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i64, i64* %6, align 8
  %95 = udiv i64 %94, 2
  store i64 %95, i64* %6, align 8
  %96 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %97 = call i32 @udl_free_urb_list(%struct.drm_device* %96)
  br label %22

98:                                               ; preds = %85
  br label %138

99:                                               ; preds = %71
  %100 = load %struct.urb*, %struct.urb** %8, align 8
  %101 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %102 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %105 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @usb_sndbulkpipe(i32 %106, i32 1)
  %108 = load i8*, i8** %10, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i32, i32* @udl_urb_completion, align 4
  %111 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %112 = call i32 @usb_fill_bulk_urb(%struct.urb* %100, i32 %103, i32 %107, i8* %108, i64 %109, i32 %110, %struct.urb_node* %111)
  %113 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %114 = load %struct.urb*, %struct.urb** %8, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.urb_node*, %struct.urb_node** %9, align 8
  %119 = getelementptr inbounds %struct.urb_node, %struct.urb_node* %118, i32 0, i32 0
  %120 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %121 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  %123 = call i32 @list_add_tail(i32* %119, i32* %122)
  %124 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %125 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  %127 = call i32 @up(i32* %126)
  %128 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %129 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %130, align 8
  %133 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %134 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %135, align 8
  br label %41

138:                                              ; preds = %98, %68, %55, %41
  %139 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %140 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %142, i32 %144)
  %146 = load %struct.udl_device*, %struct.udl_device** %7, align 8
  %147 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  ret i32 %150
}

declare dso_local %struct.udl_device* @to_udl(%struct.drm_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local %struct.urb_node* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(%struct.urb_node*) #1

declare dso_local i8* @usb_alloc_coherent(i32, i64, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @udl_free_urb_list(%struct.drm_device*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i64, i32, %struct.urb_node*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
