; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_restore_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_restore_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_hw_desc = type { i32 }
%struct.cc_hash_ctx = type { i32, i32, i32, i32 }
%struct.ahash_req_ctx = type { i32, i32 }

@DMA_DLLI = common dso_local global i32 0, align 4
@NS_BIT = common dso_local global i32 0, align 4
@S_DIN_to_HASH = common dso_local global i32 0, align 4
@SETUP_LOAD_STATE0 = common dso_local global i32 0, align 4
@HASH_PADDING_DISABLED = common dso_local global i32 0, align 4
@SETUP_LOAD_KEY0 = common dso_local global i32 0, align 4
@DIN_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_hw_desc*, %struct.cc_hash_ctx*, %struct.ahash_req_ctx*, i32)* @cc_restore_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_restore_hash(%struct.cc_hw_desc* %0, %struct.cc_hash_ctx* %1, %struct.ahash_req_ctx* %2, i32 %3) #0 {
  %5 = alloca %struct.cc_hw_desc*, align 8
  %6 = alloca %struct.cc_hash_ctx*, align 8
  %7 = alloca %struct.ahash_req_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.cc_hw_desc* %0, %struct.cc_hw_desc** %5, align 8
  store %struct.cc_hash_ctx* %1, %struct.cc_hash_ctx** %6, align 8
  store %struct.ahash_req_ctx* %2, %struct.ahash_req_ctx** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %10 = load i32, i32* %8, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %9, i64 %11
  %13 = call i32 @hw_desc_init(%struct.cc_hw_desc* %12)
  %14 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %14, i64 %16
  %18 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @set_hash_cipher_mode(%struct.cc_hw_desc* %17, i32 %20, i32 %23)
  %25 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %25, i64 %27
  %29 = load i32, i32* @DMA_DLLI, align 4
  %30 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NS_BIT, align 4
  %37 = call i32 @set_din_type(%struct.cc_hw_desc* %28, i32 %29, i32 %32, i32 %35, i32 %36)
  %38 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %38, i64 %40
  %42 = load i32, i32* @S_DIN_to_HASH, align 4
  %43 = call i32 @set_flow_mode(%struct.cc_hw_desc* %41, i32 %42)
  %44 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %44, i64 %46
  %48 = load i32, i32* @SETUP_LOAD_STATE0, align 4
  %49 = call i32 @set_setup_mode(%struct.cc_hw_desc* %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %52, i64 %54
  %56 = call i32 @hw_desc_init(%struct.cc_hw_desc* %55)
  %57 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %57, i64 %59
  %61 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @set_hash_cipher_mode(%struct.cc_hw_desc* %60, i32 %63, i32 %66)
  %68 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %68, i64 %70
  %72 = load i32, i32* @HASH_PADDING_DISABLED, align 4
  %73 = call i32 @set_cipher_config1(%struct.cc_hw_desc* %71, i32 %72)
  %74 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %74, i64 %76
  %78 = load i32, i32* @DMA_DLLI, align 4
  %79 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %7, align 8
  %80 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %83 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NS_BIT, align 4
  %86 = call i32 @set_din_type(%struct.cc_hw_desc* %77, i32 %78, i32 %81, i32 %84, i32 %85)
  %87 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %87, i64 %89
  %91 = load i32, i32* @S_DIN_to_HASH, align 4
  %92 = call i32 @set_flow_mode(%struct.cc_hw_desc* %90, i32 %91)
  %93 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %93, i64 %95
  %97 = load i32, i32* @SETUP_LOAD_KEY0, align 4
  %98 = call i32 @set_setup_mode(%struct.cc_hw_desc* %96, i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %8, align 4
  %101 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %7, align 8
  %102 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %103 = load i32, i32* @DIN_HASH, align 4
  %104 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %105 = call i32 @cc_set_desc(%struct.ahash_req_ctx* %101, %struct.cc_hash_ctx* %102, i32 %103, %struct.cc_hw_desc* %104, i32 0, i32* %8)
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local i32 @hw_desc_init(%struct.cc_hw_desc*) #1

declare dso_local i32 @set_hash_cipher_mode(%struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @set_din_type(%struct.cc_hw_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @set_flow_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_setup_mode(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @set_cipher_config1(%struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_set_desc(%struct.ahash_req_ctx*, %struct.cc_hash_ctx*, i32, %struct.cc_hw_desc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
