; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c_chtls_set_scmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c_chtls_set_scmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_sock = type { %struct.chtls_hws }
%struct.chtls_hws = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chtls_sock*)* @chtls_set_scmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_set_scmd(%struct.chtls_sock* %0) #0 {
  %2 = alloca %struct.chtls_sock*, align 8
  %3 = alloca %struct.chtls_hws*, align 8
  store %struct.chtls_sock* %0, %struct.chtls_sock** %2, align 8
  %4 = load %struct.chtls_sock*, %struct.chtls_sock** %2, align 8
  %5 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %4, i32 0, i32 0
  store %struct.chtls_hws* %5, %struct.chtls_hws** %3, align 8
  %6 = call i32 @SCMD_SEQ_NO_CTRL_V(i32 3)
  %7 = call i32 @SCMD_PROTO_VERSION_V(i32 0)
  %8 = or i32 %6, %7
  %9 = call i32 @SCMD_ENC_DEC_CTRL_V(i32 0)
  %10 = or i32 %8, %9
  %11 = call i32 @SCMD_CIPH_AUTH_SEQ_CTRL_V(i32 1)
  %12 = or i32 %10, %11
  %13 = call i32 @SCMD_CIPH_MODE_V(i32 2)
  %14 = or i32 %12, %13
  %15 = call i32 @SCMD_AUTH_MODE_V(i32 4)
  %16 = or i32 %14, %15
  %17 = call i32 @SCMD_HMAC_CTRL_V(i32 0)
  %18 = or i32 %16, %17
  %19 = call i32 @SCMD_IV_SIZE_V(i32 4)
  %20 = or i32 %18, %19
  %21 = call i32 @SCMD_NUM_IVS_V(i32 1)
  %22 = or i32 %20, %21
  %23 = load %struct.chtls_hws*, %struct.chtls_hws** %3, align 8
  %24 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = call i32 @SCMD_IV_GEN_CTRL_V(i32 1)
  %27 = call i32 @SCMD_KEY_CTX_INLINE_V(i32 0)
  %28 = or i32 %26, %27
  %29 = call i32 @SCMD_TLS_FRAG_ENABLE_V(i32 1)
  %30 = or i32 %28, %29
  %31 = load %struct.chtls_hws*, %struct.chtls_hws** %3, align 8
  %32 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  ret void
}

declare dso_local i32 @SCMD_SEQ_NO_CTRL_V(i32) #1

declare dso_local i32 @SCMD_PROTO_VERSION_V(i32) #1

declare dso_local i32 @SCMD_ENC_DEC_CTRL_V(i32) #1

declare dso_local i32 @SCMD_CIPH_AUTH_SEQ_CTRL_V(i32) #1

declare dso_local i32 @SCMD_CIPH_MODE_V(i32) #1

declare dso_local i32 @SCMD_AUTH_MODE_V(i32) #1

declare dso_local i32 @SCMD_HMAC_CTRL_V(i32) #1

declare dso_local i32 @SCMD_IV_SIZE_V(i32) #1

declare dso_local i32 @SCMD_NUM_IVS_V(i32) #1

declare dso_local i32 @SCMD_IV_GEN_CTRL_V(i32) #1

declare dso_local i32 @SCMD_KEY_CTX_INLINE_V(i32) #1

declare dso_local i32 @SCMD_TLS_FRAG_ENABLE_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
