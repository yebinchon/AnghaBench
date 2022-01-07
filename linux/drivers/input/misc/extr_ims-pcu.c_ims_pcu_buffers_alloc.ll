; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_buffers_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_buffers_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, i8*, i32, i32, %struct.TYPE_8__*, i32, i32, i8*, i32, %struct.TYPE_7__*, %struct.TYPE_9__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate memory for read buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate input URB\0A\00", align 1
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ims_pcu_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to allocate memory for write buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*)* @ims_pcu_buffers_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_buffers_alloc(%struct.ims_pcu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ims_pcu*, align 8
  %4 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %3, align 8
  %5 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %6 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %9 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %13 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %12, i32 0, i32 0
  %14 = call i8* @usb_alloc_coherent(i32 %7, i32 %10, i32 %11, i32* %13)
  %15 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %16 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %18 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %23 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %226

28:                                               ; preds = %1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @usb_alloc_urb(i32 0, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_8__*
  %32 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %33 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %32, i32 0, i32 4
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %33, align 8
  %34 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %35 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %28
  %39 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %40 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %211

45:                                               ; preds = %28
  %46 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %47 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %48 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %47, i32 0, i32 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %46
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %54 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %57 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %56, i32 0, i32 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %61 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %60, i32 0, i32 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %64 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %67 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %70 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %69, i32 0, i32 13
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_rcvbulkpipe(i32 %68, i32 %73)
  %75 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %76 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %79 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ims_pcu_irq, align 4
  %82 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %83 = call i32 @usb_fill_bulk_urb(%struct.TYPE_8__* %62, i32 %65, i32 %74, i8* %77, i32 %80, i32 %81, %struct.ims_pcu* %82)
  %84 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %85 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i32 @kmalloc(i32 %86, i32 %87)
  %89 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %90 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 8
  %91 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %92 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %45
  %96 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %97 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %96, i32 0, i32 11
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %206

102:                                              ; preds = %45
  %103 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %104 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %107 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %111 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %110, i32 0, i32 6
  %112 = call i8* @usb_alloc_coherent(i32 %105, i32 %108, i32 %109, i32* %111)
  %113 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %114 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %113, i32 0, i32 7
  store i8* %112, i8** %114, align 8
  %115 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %116 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %115, i32 0, i32 7
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %102
  %120 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %121 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %120, i32 0, i32 11
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %201

126:                                              ; preds = %102
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i8* @usb_alloc_urb(i32 0, i32 %127)
  %129 = bitcast i8* %128 to %struct.TYPE_9__*
  %130 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %131 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %130, i32 0, i32 10
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %131, align 8
  %132 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %133 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %132, i32 0, i32 10
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = icmp ne %struct.TYPE_9__* %134, null
  br i1 %135, label %143, label %136

136:                                              ; preds = %126
  %137 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %138 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %137, i32 0, i32 11
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @dev_err(i32 %139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %187

143:                                              ; preds = %126
  %144 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %145 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %146 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %145, i32 0, i32 10
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %144
  store i32 %150, i32* %148, align 4
  %151 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %152 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %155 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %154, i32 0, i32 10
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  store i32 %153, i32* %157, align 4
  %158 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %159 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %158, i32 0, i32 10
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %162 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %165 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %168 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %167, i32 0, i32 9
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @usb_rcvintpipe(i32 %166, i32 %171)
  %173 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %174 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %173, i32 0, i32 7
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %177 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @ims_pcu_irq, align 4
  %180 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %181 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %182 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %181, i32 0, i32 9
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @usb_fill_int_urb(%struct.TYPE_9__* %160, i32 %163, i32 %172, i8* %175, i32 %178, i32 %179, %struct.ims_pcu* %180, i32 %185)
  store i32 0, i32* %2, align 4
  br label %226

187:                                              ; preds = %136
  %188 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %189 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %192 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %195 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %194, i32 0, i32 7
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %198 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @usb_free_coherent(i32 %190, i32 %193, i8* %196, i32 %199)
  br label %201

201:                                              ; preds = %187, %119
  %202 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %203 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @kfree(i32 %204)
  br label %206

206:                                              ; preds = %201, %95
  %207 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %208 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %207, i32 0, i32 4
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = call i32 @usb_free_urb(%struct.TYPE_8__* %209)
  br label %211

211:                                              ; preds = %206, %38
  %212 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %213 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %216 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %219 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %222 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @usb_free_coherent(i32 %214, i32 %217, i8* %220, i32 %223)
  %225 = load i32, i32* %4, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %211, %143, %21
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i8* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_8__*, i32, i32, i8*, i32, i32, %struct.ims_pcu*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_9__*, i32, i32, i8*, i32, i32, %struct.ims_pcu*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
