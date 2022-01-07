; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_setup_e_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_setup_e_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.nvm_rq = type { i32, i32, i32*, %struct.ppa_addr, i32 }
%struct.ppa_addr = type { i32 }

@NVM_OP_ERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.nvm_rq*, i32)* @pblk_setup_e_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_setup_e_rq(%struct.pblk* %0, %struct.nvm_rq* %1, i32 %2) #0 {
  %4 = alloca %struct.ppa_addr, align 4
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.nvm_rq*, align 8
  %7 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %4, i32 0, i32 0
  store i32 %2, i32* %7, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %6, align 8
  %8 = load i32, i32* @NVM_OP_ERASE, align 4
  %9 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %10 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %12 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %11, i32 0, i32 3
  %13 = bitcast %struct.ppa_addr* %12 to i8*
  %14 = bitcast %struct.ppa_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %16 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %18 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %20 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
