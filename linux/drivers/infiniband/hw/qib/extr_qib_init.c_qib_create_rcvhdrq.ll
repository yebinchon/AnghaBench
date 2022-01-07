; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_create_rcvhdrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_create_rcvhdrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qib_ctxtdata = type { i32, i32, i32*, i32, i32*, i32, i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"attempt to allocate %d bytes for ctxt %u rcvhdrq failed\0A\00", align 1
@QIB_NODMA_RTAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"attempt to allocate 1 page for ctxt %u rcvhdrqtailaddr failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_create_rcvhdrq(%struct.qib_devdata* %0, %struct.qib_ctxtdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca %struct.qib_ctxtdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %4, align 8
  store %struct.qib_ctxtdata* %1, %struct.qib_ctxtdata** %5, align 8
  %10 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %11 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %148, label %14

14:                                               ; preds = %2
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i32 @ALIGN(i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %28 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load i32, i32* @GFP_USER, align 4
  br label %38

36:                                               ; preds = %14
  %37 = load i32, i32* @GFP_KERNEL, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %9, align 4
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @dev_to_node(i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %50 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @set_dev_node(i32* %48, i32 %51)
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %59 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %58, i32 0, i32 3
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @__GFP_COMP, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @dma_alloc_coherent(i32* %56, i32 %57, i32* %59, i32 %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %66 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %68 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @set_dev_node(i32* %70, i32 %71)
  %73 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %74 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %38
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %81 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %78, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82)
  br label %194

84:                                               ; preds = %38
  %85 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %86 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %89 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %84
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = call i32* @vmalloc_user(i32 %93)
  %95 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %96 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %95, i32 0, i32 4
  store i32* %94, i32** %96, align 8
  %97 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %98 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  br label %179

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %84
  %104 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %105 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @QIB_NODMA_RTAIL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %144, label %110

110:                                              ; preds = %103
  %111 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %112 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %111, i32 0, i32 3
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %116 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @set_dev_node(i32* %114, i32 %117)
  %119 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %120 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %119, i32 0, i32 3
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i8* @dma_alloc_coherent(i32* %122, i32 %123, i32* %8, i32 %124)
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %128 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %127, i32 0, i32 6
  store i32* %126, i32** %128, align 8
  %129 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %130 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %129, i32 0, i32 3
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @set_dev_node(i32* %132, i32 %133)
  %135 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %136 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %110
  br label %167

140:                                              ; preds = %110
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %143 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %142, i32 0, i32 7
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %140, %103
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %147 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %144, %2
  %149 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %150 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %153 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @memset(i32* %151, i32 0, i32 %154)
  %156 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %157 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %156, i32 0, i32 6
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %148
  %161 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %162 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %161, i32 0, i32 6
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* @PAGE_SIZE, align 4
  %165 = call i32 @memset(i32* %163, i32 0, i32 %164)
  br label %166

166:                                              ; preds = %160, %148
  store i32 0, i32* %3, align 4
  br label %197

167:                                              ; preds = %139
  %168 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %169 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %170 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (%struct.qib_devdata*, i8*, i32, ...) @qib_dev_err(%struct.qib_devdata* %168, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  %173 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %174 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @vfree(i32* %175)
  %177 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %178 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %177, i32 0, i32 4
  store i32* null, i32** %178, align 8
  br label %179

179:                                              ; preds = %167, %101
  %180 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %181 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %180, i32 0, i32 3
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %186 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %189 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @dma_free_coherent(i32* %183, i32 %184, i32* %187, i32 %190)
  %192 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %193 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %192, i32 0, i32 2
  store i32* null, i32** %193, align 8
  br label %194

194:                                              ; preds = %179, %77
  %195 = load i32, i32* @ENOMEM, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %194, %166
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @set_dev_node(i32*, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32, ...) #1

declare dso_local i32* @vmalloc_user(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
