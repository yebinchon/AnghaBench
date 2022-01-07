; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_ppa_dev_to_tgt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_ppa_dev_to_tgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_tgt_dev = type { i32 }
%struct.ppa_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_tgt_dev*, %struct.ppa_addr*, i32)* @nvm_ppa_dev_to_tgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvm_ppa_dev_to_tgt(%struct.nvm_tgt_dev* %0, %struct.ppa_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.nvm_tgt_dev*, align 8
  %5 = alloca %struct.ppa_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ppa_addr, align 4
  store %struct.nvm_tgt_dev* %0, %struct.nvm_tgt_dev** %4, align 8
  store %struct.ppa_addr* %1, %struct.ppa_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %37, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load %struct.ppa_addr*, %struct.ppa_addr** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %14, i64 %16
  %18 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %4, align 8
  %19 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ppa_addr*, %struct.ppa_addr** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %21, i64 %23
  %25 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_to_generic_addr(i32 %20, i32 %26)
  %28 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.ppa_addr* %17 to i8*
  %30 = bitcast %struct.ppa_addr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %4, align 8
  %32 = load %struct.ppa_addr*, %struct.ppa_addr** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %32, i64 %34
  %36 = call i32 @nvm_map_to_tgt(%struct.nvm_tgt_dev* %31, %struct.ppa_addr* %35)
  br label %37

37:                                               ; preds = %13
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %9

40:                                               ; preds = %9
  ret void
}

declare dso_local i32 @dev_to_generic_addr(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvm_map_to_tgt(%struct.nvm_tgt_dev*, %struct.ppa_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
