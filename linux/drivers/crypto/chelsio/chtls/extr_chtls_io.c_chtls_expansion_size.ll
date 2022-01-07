; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_chtls_expansion_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_chtls_expansion_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.chtls_sock = type { %struct.chtls_hws }
%struct.chtls_hws = type { i32, %struct.tls_scmd }
%struct.tls_scmd = type { i32 }

@SCMD_CIPH_MODE_AES_GCM = common dso_local global i64 0, align 8
@GCM_TAG_SIZE = common dso_local global i32 0, align 4
@AEAD_EXPLICIT_DATA_SIZE = common dso_local global i32 0, align 4
@TLS_HEADER_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, i32, i16*)* @chtls_expansion_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_expansion_size(%struct.sock* %0, i32 %1, i32 %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca %struct.chtls_sock*, align 8
  %11 = alloca %struct.chtls_hws*, align 8
  %12 = alloca %struct.tls_scmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i16* %3, i16** %9, align 8
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %18)
  store %struct.chtls_sock* %19, %struct.chtls_sock** %10, align 8
  %20 = load %struct.chtls_sock*, %struct.chtls_sock** %10, align 8
  %21 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %20, i32 0, i32 0
  store %struct.chtls_hws* %21, %struct.chtls_hws** %11, align 8
  %22 = load %struct.chtls_hws*, %struct.chtls_hws** %11, align 8
  %23 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %22, i32 0, i32 1
  store %struct.tls_scmd* %23, %struct.tls_scmd** %12, align 8
  %24 = load %struct.chtls_hws*, %struct.chtls_hws** %11, align 8
  %25 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %27 = load %struct.tls_scmd*, %struct.tls_scmd** %12, align 8
  %28 = getelementptr inbounds %struct.tls_scmd, %struct.tls_scmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @SCMD_CIPH_MODE_G(i32 %29)
  %31 = load i64, i64* @SCMD_CIPH_MODE_AES_GCM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %86

33:                                               ; preds = %4
  %34 = load i32, i32* @GCM_TAG_SIZE, align 4
  %35 = load i32, i32* @AEAD_EXPLICIT_DATA_SIZE, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @TLS_HEADER_LENGTH, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %43, %44
  %46 = sdiv i32 %42, %45
  %47 = trunc i32 %46 to i16
  %48 = load i16*, i16** %9, align 8
  store i16 %47, i16* %48, align 2
  %49 = load i16*, i16** %9, align 8
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp sgt i32 %51, 32
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i16*, i16** %9, align 8
  store i16 32, i16* %54, align 2
  br label %62

55:                                               ; preds = %41
  %56 = load i16*, i16** %9, align 8
  %57 = load i16, i16* %56, align 2
  %58 = icmp ne i16 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i16*, i16** %9, align 8
  store i16 1, i16* %60, align 2
  br label %61

61:                                               ; preds = %59, %55
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i16*, i16** %9, align 8
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i32
  %66 = load i32, i32* %17, align 4
  %67 = mul nsw i32 %65, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %5, align 4
  br label %88

69:                                               ; preds = %33
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %17, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %13, align 4
  %78 = srem i32 %76, %77
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %81, %69
  br label %86

86:                                               ; preds = %85, %4
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %62
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i64 @SCMD_CIPH_MODE_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
