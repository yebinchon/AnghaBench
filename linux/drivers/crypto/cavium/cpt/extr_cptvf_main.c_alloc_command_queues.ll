; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_alloc_command_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_alloc_command_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.command_qinfo = type { i64, i64, %struct.command_queue* }
%struct.command_queue = type { i64, i32, %struct.command_chunk*, i32 }
%struct.command_chunk = type { i64, i64, i32*, i32 }

@CPT_NEXT_CHUNK_PTR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Command Q (%d) chunk (%d) allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_vf*, %struct.command_qinfo*, i64, i64)* @alloc_command_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_command_queues(%struct.cpt_vf* %0, %struct.command_qinfo* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpt_vf*, align 8
  %7 = alloca %struct.command_qinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.command_queue*, align 8
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.command_chunk*, align 8
  %17 = alloca %struct.command_chunk*, align 8
  %18 = alloca %struct.command_chunk*, align 8
  %19 = alloca i64, align 8
  store %struct.cpt_vf* %0, %struct.cpt_vf** %6, align 8
  store %struct.command_qinfo* %1, %struct.command_qinfo** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.command_queue* null, %struct.command_queue** %12, align 8
  %20 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %21 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %20, i32 0, i32 2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %13, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.command_qinfo*, %struct.command_qinfo** %7, align 8
  %25 = getelementptr inbounds %struct.command_qinfo, %struct.command_qinfo* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.command_qinfo*, %struct.command_qinfo** %7, align 8
  %28 = getelementptr inbounds %struct.command_qinfo, %struct.command_qinfo* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @min(i64 %26, i64 %29)
  %31 = load i32, i32* @CPT_NEXT_CHUNK_PTR_SIZE, align 4
  %32 = mul nsw i32 %30, %31
  %33 = add nsw i32 %32, 1
  %34 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %35 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.command_qinfo*, %struct.command_qinfo** %7, align 8
  %38 = getelementptr inbounds %struct.command_qinfo, %struct.command_qinfo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %36, %39
  store i64 %40, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %185, %4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %44 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %188

47:                                               ; preds = %41
  store i64 0, i64* %14, align 8
  %48 = load i64, i64* %11, align 8
  store i64 %48, i64* %15, align 8
  store %struct.command_chunk* null, %struct.command_chunk** %16, align 8
  store %struct.command_chunk* null, %struct.command_chunk** %17, align 8
  store %struct.command_chunk* null, %struct.command_chunk** %18, align 8
  %49 = load %struct.command_qinfo*, %struct.command_qinfo** %7, align 8
  %50 = getelementptr inbounds %struct.command_qinfo, %struct.command_qinfo* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.command_qinfo*, %struct.command_qinfo** %7, align 8
  %53 = getelementptr inbounds %struct.command_qinfo, %struct.command_qinfo* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = mul i64 %51, %54
  store i64 %55, i64* %19, align 8
  %56 = load %struct.command_qinfo*, %struct.command_qinfo** %7, align 8
  %57 = getelementptr inbounds %struct.command_qinfo, %struct.command_qinfo* %56, i32 0, i32 2
  %58 = load %struct.command_queue*, %struct.command_queue** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.command_queue, %struct.command_queue* %58, i64 %60
  store %struct.command_queue* %61, %struct.command_queue** %12, align 8
  %62 = load %struct.command_qinfo*, %struct.command_qinfo** %7, align 8
  %63 = getelementptr inbounds %struct.command_qinfo, %struct.command_qinfo* %62, i32 0, i32 2
  %64 = load %struct.command_queue*, %struct.command_queue** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.command_queue, %struct.command_queue* %64, i64 %66
  %68 = getelementptr inbounds %struct.command_queue, %struct.command_queue* %67, i32 0, i32 3
  %69 = call i32 @INIT_HLIST_HEAD(i32* %68)
  br label %70

70:                                               ; preds = %163, %47
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.command_chunk* @kzalloc(i32 32, i32 %71)
  store %struct.command_chunk* %72, %struct.command_chunk** %16, align 8
  %73 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  %74 = icmp ne %struct.command_chunk* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %189

76:                                               ; preds = %70
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %19, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* %19, align 8
  br label %84

82:                                               ; preds = %76
  %83 = load i64, i64* %15, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i64 [ %81, %80 ], [ %83, %82 ]
  store i64 %85, i64* %14, align 8
  %86 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = load i64, i64* %14, align 8
  %89 = load i32, i32* @CPT_NEXT_CHUNK_PTR_SIZE, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %88, %90
  %92 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  %93 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %92, i32 0, i32 1
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i64 @dma_alloc_coherent(i32* %87, i64 %91, i64* %93, i32 %94)
  %96 = inttoptr i64 %95 to i32*
  %97 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  %98 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %97, i32 0, i32 2
  store i32* %96, i32** %98, align 8
  %99 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  %100 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %113, label %103

103:                                              ; preds = %84
  %104 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.command_queue*, %struct.command_queue** %12, align 8
  %108 = getelementptr inbounds %struct.command_queue, %struct.command_queue* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %106, i64 %109)
  %111 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  %112 = call i32 @kfree(%struct.command_chunk* %111)
  br label %189

113:                                              ; preds = %84
  %114 = load i64, i64* %14, align 8
  %115 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  %116 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.command_queue*, %struct.command_queue** %12, align 8
  %118 = getelementptr inbounds %struct.command_queue, %struct.command_queue* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %113
  %122 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  %123 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %122, i32 0, i32 3
  %124 = load %struct.command_qinfo*, %struct.command_qinfo** %7, align 8
  %125 = getelementptr inbounds %struct.command_qinfo, %struct.command_qinfo* %124, i32 0, i32 2
  %126 = load %struct.command_queue*, %struct.command_queue** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.command_queue, %struct.command_queue* %126, i64 %128
  %130 = getelementptr inbounds %struct.command_queue, %struct.command_queue* %129, i32 0, i32 3
  %131 = call i32 @hlist_add_head(i32* %123, i32* %130)
  %132 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  store %struct.command_chunk* %132, %struct.command_chunk** %17, align 8
  br label %139

133:                                              ; preds = %113
  %134 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  %135 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %134, i32 0, i32 3
  %136 = load %struct.command_chunk*, %struct.command_chunk** %18, align 8
  %137 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %136, i32 0, i32 3
  %138 = call i32 @hlist_add_behind(i32* %135, i32* %137)
  br label %139

139:                                              ; preds = %133, %121
  %140 = load %struct.command_queue*, %struct.command_queue** %12, align 8
  %141 = getelementptr inbounds %struct.command_queue, %struct.command_queue* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %141, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* %15, align 8
  %146 = sub i64 %145, %144
  store i64 %146, i64* %15, align 8
  %147 = load %struct.command_chunk*, %struct.command_chunk** %18, align 8
  %148 = icmp ne %struct.command_chunk* %147, null
  br i1 %148, label %149, label %161

149:                                              ; preds = %139
  %150 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  %151 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.command_chunk*, %struct.command_chunk** %18, align 8
  %154 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.command_chunk*, %struct.command_chunk** %18, align 8
  %157 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = bitcast i32* %159 to i64*
  store i64 %152, i64* %160, align 8
  br label %161

161:                                              ; preds = %149, %139
  %162 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  store %struct.command_chunk* %162, %struct.command_chunk** %18, align 8
  br label %163

163:                                              ; preds = %161
  %164 = load i64, i64* %15, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %70, label %166

166:                                              ; preds = %163
  %167 = load %struct.command_chunk*, %struct.command_chunk** %17, align 8
  store %struct.command_chunk* %167, %struct.command_chunk** %16, align 8
  %168 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  %169 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.command_chunk*, %struct.command_chunk** %18, align 8
  %172 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.command_chunk*, %struct.command_chunk** %18, align 8
  %175 = getelementptr inbounds %struct.command_chunk, %struct.command_chunk* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = bitcast i32* %177 to i64*
  store i64 %170, i64* %178, align 8
  %179 = load %struct.command_chunk*, %struct.command_chunk** %16, align 8
  %180 = load %struct.command_queue*, %struct.command_queue** %12, align 8
  %181 = getelementptr inbounds %struct.command_queue, %struct.command_queue* %180, i32 0, i32 2
  store %struct.command_chunk* %179, %struct.command_chunk** %181, align 8
  %182 = load %struct.command_queue*, %struct.command_queue** %12, align 8
  %183 = getelementptr inbounds %struct.command_queue, %struct.command_queue* %182, i32 0, i32 1
  %184 = call i32 @spin_lock_init(i32* %183)
  br label %185

185:                                              ; preds = %166
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %41

188:                                              ; preds = %41
  store i32 0, i32* %5, align 4
  br label %195

189:                                              ; preds = %103, %75
  %190 = load %struct.cpt_vf*, %struct.cpt_vf** %6, align 8
  %191 = load %struct.command_qinfo*, %struct.command_qinfo** %7, align 8
  %192 = call i32 @free_command_queues(%struct.cpt_vf* %190, %struct.command_qinfo* %191)
  %193 = load i32, i32* @ENOMEM, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %189, %188
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local %struct.command_chunk* @kzalloc(i32, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i64, i64*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #1

declare dso_local i32 @kfree(%struct.command_chunk*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @hlist_add_behind(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @free_command_queues(%struct.cpt_vf*, %struct.command_qinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
