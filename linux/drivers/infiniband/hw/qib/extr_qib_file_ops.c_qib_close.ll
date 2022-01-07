; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.qib_filedata* }
%struct.qib_filedata = type { i32, i32, i64, %struct.qib_ctxtdata* }
%struct.qib_ctxtdata = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64*, i64, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i64, i32 (%struct.qib_devdata*, %struct.qib_ctxtdata*)*, i32 (i32, i32, i32)*, i64, i32, i32** }

@qib_mutex = common dso_local global i32 0, align 4
@qib_cpulist = common dso_local global i32 0, align 4
@QIB_RCVCTRL_CTXT_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_INTRAVAIL_DIS = common dso_local global i32 0, align 4
@TXCHK_CHG_TYPE_KERN = common dso_local global i32 0, align 4
@qib_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @qib_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.qib_filedata*, align 8
  %6 = alloca %struct.qib_ctxtdata*, align 8
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = call i32 @mutex_lock(i32* @qib_mutex)
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.qib_filedata*, %struct.qib_filedata** %12, align 8
  store %struct.qib_filedata* %13, %struct.qib_filedata** %5, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  store %struct.qib_filedata* null, %struct.qib_filedata** %15, align 8
  %16 = load %struct.qib_filedata*, %struct.qib_filedata** %5, align 8
  %17 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %16, i32 0, i32 3
  %18 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %17, align 8
  store %struct.qib_ctxtdata* %18, %struct.qib_ctxtdata** %6, align 8
  %19 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %20 = icmp ne %struct.qib_ctxtdata* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 @mutex_unlock(i32* @qib_mutex)
  br label %198

23:                                               ; preds = %2
  %24 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %25 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %24, i32 0, i32 13
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %25, align 8
  store %struct.qib_devdata* %26, %struct.qib_devdata** %7, align 8
  %27 = call i32 (...) @qib_flush_wc()
  %28 = load %struct.qib_filedata*, %struct.qib_filedata** %5, align 8
  %29 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  %33 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %34 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.qib_filedata*, %struct.qib_filedata** %5, align 8
  %37 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @qib_user_sdma_queue_drain(i32 %35, i64 %38)
  %40 = load %struct.qib_filedata*, %struct.qib_filedata** %5, align 8
  %41 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @qib_user_sdma_queue_destroy(i64 %42)
  br label %44

44:                                               ; preds = %32, %23
  %45 = load %struct.qib_filedata*, %struct.qib_filedata** %5, align 8
  %46 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.qib_filedata*, %struct.qib_filedata** %5, align 8
  %51 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @qib_cpulist, align 4
  %54 = call i32 @__clear_bit(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %57 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %56, i32 0, i32 12
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = load %struct.qib_filedata*, %struct.qib_filedata** %5, align 8
  %63 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %68 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %72 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %71, i32 0, i32 11
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.qib_filedata*, %struct.qib_filedata** %5, align 8
  %75 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %73, i64 %77
  store i64 0, i64* %78, align 8
  %79 = call i32 @mutex_unlock(i32* @qib_mutex)
  br label %198

80:                                               ; preds = %55
  %81 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %82 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %81, i32 0, i32 5
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %86 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %9, align 4
  %88 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %89 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %88, i32 0, i32 6
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  store i32* null, i32** %93, align 8
  %94 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %95 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %94, i32 0, i32 10
  store i64 0, i64* %95, align 8
  %96 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %97 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %96, i32 0, i32 5
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %101 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %100, i32 0, i32 9
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %80
  %105 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %106 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %111 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %116 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %114, %109, %104, %80
  %120 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %121 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %120, i32 0, i32 9
  store i64 0, i64* %121, align 8
  %122 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %123 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %122, i32 0, i32 8
  store i64 0, i64* %123, align 8
  %124 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %125 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %124, i32 0, i32 7
  store i64 0, i64* %125, align 8
  %126 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %127 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %126, i32 0, i32 6
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %119, %114
  %129 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %130 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %135 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %134, i32 0, i32 5
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %133, %128
  %137 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %138 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %193

141:                                              ; preds = %136
  %142 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %143 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %142, i32 0, i32 3
  %144 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %143, align 8
  %145 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %146 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @QIB_RCVCTRL_CTXT_DIS, align 4
  %149 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_DIS, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %9, align 4
  %152 = call i32 %144(i32 %147, i32 %150, i32 %151)
  %153 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %154 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %155 = call i32 @qib_clean_part_key(%struct.qib_ctxtdata* %153, %struct.qib_devdata* %154)
  %156 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %157 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %158 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %161 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @qib_disarm_piobufs(%struct.qib_devdata* %156, i32 %159, i32 %162)
  %164 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %165 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %166 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %169 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @TXCHK_CHG_TYPE_KERN, align 4
  %172 = call i32 @qib_chg_pioavailkernel(%struct.qib_devdata* %164, i32 %167, i32 %170, i32 %171, i32* null)
  %173 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %174 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %173, i32 0, i32 2
  %175 = load i32 (%struct.qib_devdata*, %struct.qib_ctxtdata*)*, i32 (%struct.qib_devdata*, %struct.qib_ctxtdata*)** %174, align 8
  %176 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %177 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %178 = call i32 %175(%struct.qib_devdata* %176, %struct.qib_ctxtdata* %177)
  %179 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %180 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %141
  %184 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %185 = call i32 @unlock_expected_tids(%struct.qib_ctxtdata* %184)
  br label %186

186:                                              ; preds = %183, %141
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qib_stats, i32 0, i32 0), align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qib_stats, i32 0, i32 0), align 4
  %189 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %190 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %186, %136
  %194 = call i32 @mutex_unlock(i32* @qib_mutex)
  %195 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %196 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %197 = call i32 @qib_free_ctxtdata(%struct.qib_devdata* %195, %struct.qib_ctxtdata* %196)
  br label %198

198:                                              ; preds = %193, %61, %21
  %199 = load %struct.qib_filedata*, %struct.qib_filedata** %5, align 8
  %200 = call i32 @kfree(%struct.qib_filedata* %199)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qib_flush_wc(...) #1

declare dso_local i32 @qib_user_sdma_queue_drain(i32, i64) #1

declare dso_local i32 @qib_user_sdma_queue_destroy(i64) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_clean_part_key(%struct.qib_ctxtdata*, %struct.qib_devdata*) #1

declare dso_local i32 @qib_disarm_piobufs(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_chg_pioavailkernel(%struct.qib_devdata*, i32, i32, i32, i32*) #1

declare dso_local i32 @unlock_expected_tids(%struct.qib_ctxtdata*) #1

declare dso_local i32 @qib_free_ctxtdata(%struct.qib_devdata*, %struct.qib_ctxtdata*) #1

declare dso_local i32 @kfree(%struct.qib_filedata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
