; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_make_tlstx_data_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_make_tlstx_data_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.chtls_sock = type { %struct.chtls_hws }
%struct.chtls_hws = type { i32, i32, i32, i32, i16, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, i32, i32, i32)* @make_tlstx_data_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_tlstx_data_wr(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca %struct.chtls_sock*, align 8
  %13 = alloca %struct.chtls_hws*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i16 0, i16* %11, align 2
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %16)
  store %struct.chtls_sock* %17, %struct.chtls_sock** %12, align 8
  %18 = load %struct.chtls_sock*, %struct.chtls_sock** %12, align 8
  %19 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %18, i32 0, i32 0
  store %struct.chtls_hws* %19, %struct.chtls_hws** %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.chtls_hws*, %struct.chtls_hws** %13, align 8
  %22 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %20, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @chtls_expansion_size(%struct.sock* %25, i32 %26, i32 0, i16* null)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load %struct.chtls_hws*, %struct.chtls_hws** %13, align 8
  %30 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %66, label %33

33:                                               ; preds = %5
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = load %struct.chtls_hws*, %struct.chtls_hws** %13, align 8
  %36 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @chtls_expansion_size(%struct.sock* %34, i32 %37, i32 1, i16* %11)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.chtls_hws*, %struct.chtls_hws** %13, align 8
  %41 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i16, i16* %11, align 2
  %43 = load %struct.chtls_hws*, %struct.chtls_hws** %13, align 8
  %44 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %43, i32 0, i32 4
  store i16 %42, i16* %44, align 4
  %45 = load %struct.chtls_hws*, %struct.chtls_hws** %13, align 8
  %46 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %45, i32 0, i32 4
  %47 = load i16, i16* %46, align 4
  %48 = zext i16 %47 to i32
  %49 = load %struct.chtls_hws*, %struct.chtls_hws** %13, align 8
  %50 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.chtls_hws*, %struct.chtls_hws** %13, align 8
  %53 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %52, i32 0, i32 4
  %54 = load i16, i16* %53, align 4
  %55 = zext i16 %54 to i32
  %56 = sdiv i32 %51, %55
  %57 = load %struct.chtls_hws*, %struct.chtls_hws** %13, align 8
  %58 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = mul nsw i32 %48, %60
  %62 = load %struct.chtls_hws*, %struct.chtls_hws** %13, align 8
  %63 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.chtls_hws*, %struct.chtls_hws** %13, align 8
  %65 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %33, %5
  %67 = load %struct.sock*, %struct.sock** %6, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call i64 @tls_copy_ivs(%struct.sock* %67, %struct.sk_buff* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %90

72:                                               ; preds = %66
  %73 = load %struct.sock*, %struct.sock** %6, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = call i32 @tls_copy_tx_key(%struct.sock* %73, %struct.sk_buff* %74)
  %76 = load %struct.sock*, %struct.sock** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @tls_tx_data_wr(%struct.sock* %76, %struct.sk_buff* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %15, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load %struct.chtls_hws*, %struct.chtls_hws** %13, align 8
  %87 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %72, %71
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @chtls_expansion_size(%struct.sock*, i32, i32, i16*) #1

declare dso_local i64 @tls_copy_ivs(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tls_copy_tx_key(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tls_tx_data_wr(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
