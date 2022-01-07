; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_hdr.h_bth_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_hdr.h_bth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pkt_info = type { i64, i64 }
%struct.rxe_bth = type { i32, i8*, i8*, i32, i32 }

@BTH_PAD_MASK = common dso_local global i32 0, align 4
@BTH_SE_MASK = common dso_local global i32 0, align 4
@BTH_MIG_MASK = common dso_local global i32 0, align 4
@BTH_QPN_MASK = common dso_local global i32 0, align 4
@BTH_PSN_MASK = common dso_local global i32 0, align 4
@BTH_ACK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_pkt_info*, i32, i32, i32, i32, i32, i32, i32, i32)* @bth_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bth_init(%struct.rxe_pkt_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.rxe_pkt_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.rxe_bth*, align 8
  store %struct.rxe_pkt_info* %0, %struct.rxe_pkt_info** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %10, align 8
  %21 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %10, align 8
  %24 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = inttoptr i64 %26 to %struct.rxe_bth*
  store %struct.rxe_bth* %27, %struct.rxe_bth** %19, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.rxe_bth*, %struct.rxe_bth** %19, align 8
  %30 = getelementptr inbounds %struct.rxe_bth, %struct.rxe_bth* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %14, align 4
  %32 = shl i32 %31, 4
  %33 = load i32, i32* @BTH_PAD_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.rxe_bth*, %struct.rxe_bth** %19, align 8
  %36 = getelementptr inbounds %struct.rxe_bth, %struct.rxe_bth* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %9
  %40 = load i32, i32* @BTH_SE_MASK, align 4
  %41 = load %struct.rxe_bth*, %struct.rxe_bth** %19, align 8
  %42 = getelementptr inbounds %struct.rxe_bth, %struct.rxe_bth* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %9
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* @BTH_MIG_MASK, align 4
  %50 = load %struct.rxe_bth*, %struct.rxe_bth** %19, align 8
  %51 = getelementptr inbounds %struct.rxe_bth, %struct.rxe_bth* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @cpu_to_be16(i32 %55)
  %57 = load %struct.rxe_bth*, %struct.rxe_bth** %19, align 8
  %58 = getelementptr inbounds %struct.rxe_bth, %struct.rxe_bth* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @BTH_QPN_MASK, align 4
  %61 = and i32 %59, %60
  %62 = call i8* @cpu_to_be32(i32 %61)
  %63 = load %struct.rxe_bth*, %struct.rxe_bth** %19, align 8
  %64 = getelementptr inbounds %struct.rxe_bth, %struct.rxe_bth* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @BTH_PSN_MASK, align 4
  %66 = load i32, i32* %18, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %54
  %71 = load i32, i32* @BTH_ACK_MASK, align 4
  %72 = load i32, i32* %18, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %70, %54
  %75 = load i32, i32* %18, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.rxe_bth*, %struct.rxe_bth** %19, align 8
  %78 = getelementptr inbounds %struct.rxe_bth, %struct.rxe_bth* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  ret void
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
