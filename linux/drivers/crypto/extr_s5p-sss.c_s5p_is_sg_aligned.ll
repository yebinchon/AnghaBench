; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_is_sg_aligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_is_sg_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*)* @s5p_is_sg_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_is_sg_aligned(%struct.scatterlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scatterlist*, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %3, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %6 = icmp ne %struct.scatterlist* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %9 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %12 = call i32 @IS_ALIGNED(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %19

15:                                               ; preds = %7
  %16 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %17 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %16)
  store %struct.scatterlist* %17, %struct.scatterlist** %3, align 8
  br label %4

18:                                               ; preds = %4
  store i32 1, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
