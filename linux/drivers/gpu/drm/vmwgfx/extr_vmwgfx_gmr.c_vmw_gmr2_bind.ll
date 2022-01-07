; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_gmr.c_vmw_gmr2_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_gmr.c_vmw_gmr2_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_piter = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }

@VMW_PPN_PER_REMAP = common dso_local global i64 0, align 8
@VMW_PPN_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@SVGA_CMD_DEFINE_GMR2 = common dso_local global i32 0, align 4
@SVGA_REMAP_GMR2_PPN64 = common dso_local global i32 0, align 4
@SVGA_REMAP_GMR2_PPN32 = common dso_local global i32 0, align 4
@SVGA_CMD_REMAP_GMR2 = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_piter*, i64, i32)* @vmw_gmr2_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_gmr2_bind(%struct.vmw_private* %0, %struct.vmw_piter* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_piter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.vmw_piter* %1, %struct.vmw_piter** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 28, i32* %14, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @VMW_PPN_PER_REMAP, align 8
  %23 = udiv i64 %21, %22
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @VMW_PPN_PER_REMAP, align 8
  %26 = urem i64 %24, %25
  %27 = icmp ugt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = add i64 %23, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %15, align 4
  %32 = load i64, i64* @VMW_PPN_SIZE, align 8
  %33 = load i64, i64* %8, align 8
  %34 = mul i64 %32, %33
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 28, %36
  %38 = add i64 %34, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %18, align 4
  %43 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %44 = load i32, i32* %18, align 4
  %45 = call i32* @VMW_FIFO_RESERVE(%struct.vmw_private* %43, i32 %44)
  store i32* %45, i32** %12, align 8
  store i32* %45, i32** %13, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = icmp eq i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %4
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %147

54:                                               ; preds = %4
  %55 = load i32, i32* %9, align 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* @SVGA_CMD_DEFINE_GMR2, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %12, align 8
  store i32 %59, i32* %60, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @memcpy(i32* %62, %struct.TYPE_4__* %10, i32 24)
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  store i32* %65, i32** %12, align 8
  %66 = load i32, i32* %9, align 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load i64, i64* @VMW_PPN_SIZE, align 8
  %69 = icmp ugt i64 %68, 4
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i32, i32* @SVGA_REMAP_GMR2_PPN64, align 4
  br label %74

72:                                               ; preds = %54
  %73 = load i32, i32* @SVGA_REMAP_GMR2_PPN32, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %125, %74
  %78 = load i64, i64* %8, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %134

80:                                               ; preds = %77
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @VMW_PPN_PER_REMAP, align 8
  %83 = call i64 @min(i64 %81, i64 %82)
  store i64 %83, i64* %20, align 8
  %84 = load i32, i32* %17, align 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = load i64, i64* %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i64 %86, i64* %87, align 8
  %88 = load i32, i32* @SVGA_CMD_REMAP_GMR2, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %12, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @memcpy(i32* %91, %struct.TYPE_4__* %11, i32 24)
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 6
  store i32* %94, i32** %12, align 8
  store i32 0, i32* %19, align 4
  br label %95

95:                                               ; preds = %122, %80
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %20, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %125

100:                                              ; preds = %95
  %101 = load i64, i64* @VMW_PPN_SIZE, align 8
  %102 = icmp ule i64 %101, 4
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.vmw_piter*, %struct.vmw_piter** %7, align 8
  %105 = call i32 @vmw_piter_dma_addr(%struct.vmw_piter* %104)
  %106 = load i32, i32* @PAGE_SHIFT, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32*, i32** %12, align 8
  store i32 %107, i32* %108, align 4
  br label %115

109:                                              ; preds = %100
  %110 = load %struct.vmw_piter*, %struct.vmw_piter** %7, align 8
  %111 = call i32 @vmw_piter_dma_addr(%struct.vmw_piter* %110)
  %112 = load i32, i32* @PAGE_SHIFT, align 4
  %113 = ashr i32 %111, %112
  %114 = load i32*, i32** %12, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %103
  %116 = load i64, i64* @VMW_PPN_SIZE, align 8
  %117 = udiv i64 %116, 4
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 %117
  store i32* %119, i32** %12, align 8
  %120 = load %struct.vmw_piter*, %struct.vmw_piter** %7, align 8
  %121 = call i32 @vmw_piter_next(%struct.vmw_piter* %120)
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %19, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %19, align 4
  br label %95

125:                                              ; preds = %95
  %126 = load i64, i64* %20, align 8
  %127 = load i64, i64* %8, align 8
  %128 = sub i64 %127, %126
  store i64 %128, i64* %8, align 8
  %129 = load i64, i64* %20, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = add i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %17, align 4
  br label %77

134:                                              ; preds = %77
  %135 = load i32*, i32** %12, align 8
  %136 = load i32*, i32** %13, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = udiv i64 %138, 4
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = icmp ne i32* %135, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @BUG_ON(i32 %142)
  %144 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @vmw_fifo_commit(%struct.vmw_private* %144, i32 %145)
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %134, %51
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32* @VMW_FIFO_RESERVE(%struct.vmw_private*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @vmw_piter_dma_addr(%struct.vmw_piter*) #1

declare dso_local i32 @vmw_piter_next(%struct.vmw_piter*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmw_fifo_commit(%struct.vmw_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
